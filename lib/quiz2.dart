import 'dart:async';
import 'package:catex/catex.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:math_quiz/class&service.dart';
import 'package:math_quiz/custom.dart';
class Quiz2 extends StatefulWidget {

  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz2> {
  @override
  void initState(){
    super.initState();
  }
  var normalColor = Color.fromRGBO(66,39,255,1);
  var wrong = Color.fromRGBO(255,0,0,1);
  var green = Color.fromRGBO(1,255,1,1);
  var b1 = Color.fromRGBO(66,39,255,1);
  var b2 = Color.fromRGBO(66,39,255,1);
  var b3 = Color.fromRGBO(66,39,255,1);
  var b4 = Color.fromRGBO(66,39,255,1);
  final player = AudioPlayer();
  int solved = 0;
  int index = 0;
  int mark = 0;
  int length = questions2.length;
  int l =  1;
  int h = questions2.length;
  bool isSolved = false;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Color.fromRGBO(66, 39, 255, 1),
        toolbarHeight: height*0.1,
        title: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [new Text("Quiz" , style: new TextStyle(color: Colors.white),),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new IconButton(icon: Icon(Icons.arrow_back,color: Colors.white,), onPressed: (){
                  if(index>0){
                    setState(() {
                      index--;
                      l--;
                      b1 = normalColor;
                      b2 = normalColor;
                      b3 = normalColor;
                      b4 = normalColor;
                    });
                  }
                }),
                new SizedBox(
                  width: width*0.02,
                ),
                new IconButton(icon: Icon(Icons.arrow_forward,color: Colors.white,), onPressed: (){
                  if(index<questions2.length-1){
                    setState(() {
                      index++;
                      l++;
                      b1 = normalColor;
                      b2 = normalColor;
                      b3 = normalColor;
                      b4 = normalColor;
                    });
                  }
                }),

              ],
            )
          ],
        ),
        centerTitle: true,
        actions: [
          new Container(
            padding: EdgeInsets.only(right: width*0.05),
            alignment: Alignment.center,
            child: new Text("$l/$h",style: new TextStyle(color: Colors.white,fontSize: 18),textAlign: TextAlign.center,),
          )
        ],
      ),

      body: new Container(
          width: width,
          height: height,
          alignment: Alignment.center,
          color: Colors.white,
          child:new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new SizedBox(
                height: height*0.02,
              ),
              AnimatedSwitcher(duration: Duration(milliseconds: 700)
                ,child: question(height, width , questions2[index].quest,questions2[index].req,  UniqueKey()),
                switchInCurve: Curves.easeInCirc,
                switchOutCurve: Curves.bounceInOut,
              ) ,
              new SizedBox(height: height*0.04,),
              new Container(
                width: width,
                height: height*0.3,
                color: Colors.white,
                child: SingleChildScrollView(
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      new Container(
                        height: height*0.13,
                        color: Colors.transparent,
                        child: new Row(

                          children: [
                            new SizedBox(width: width*0.01,),
                            // ignore: deprecated_member_use
                            SizedBox(height: height*0.1,width:width*0.48,child: new RaisedButton(
                                onPressed: ()async{
                                  if(questions2[index].answers[0] == questions2[index].correct){
                                    setState(() {
                                      b1 = green;
                                      isSolved = true;
                                    });

                                    await player.setAsset("assets/Correct.mp3");
                                    await player.play();
                                  }
                                  else{
                                    setState(() {
                                      b1 = wrong;
                                      Timer(Duration(seconds: 2),(){
                                        setState(() {
                                          b1 = normalColor;
                                        });
                                      });
                                    });
                                  }
                                },
                                color: b1,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50.0))),
                                child:  DefaultTextStyle(textAlign: TextAlign.center,style: new TextStyle(color: Colors.white,fontSize: 10), child: CaTeX(questions2[index].answers[0]))),),
                            Expanded(child: SizedBox()),
                            // ignore: deprecated_member_use
                            SizedBox(height: height*0.1,width:width*0.48,child: new RaisedButton(onPressed: ()async{
                              if(questions2[index].answers[1] == questions2[index].correct){
                                setState(() {
                                  b2 = green;
                                  isSolved = true;
                                });
                                await player.setAsset("assets/Correct.mp3");
                                await player.play();
                              }
                              else{
                                setState(() {
                                  b2 = wrong;
                                  Timer(Duration(seconds: 2),(){
                                    setState(() {
                                      b2 = normalColor;
                                    });
                                  });
                                });
                              }
                            },color: b2,shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
                                child: DefaultTextStyle(style: new TextStyle(color: Colors.white,fontSize: 10), child: CaTeX(questions2[index].answers[1])))),
                            new SizedBox(width: width*0.01,)
                          ],
                        ),
                      ),
                      new Container(
                        height: height*0.03,
                        color: Colors.white,
                      ),
                      new Container(
                        height: height*0.1,
                        color: Colors.white,
                        child: new Row(

                          children: [
                            new SizedBox(width: width*0.01,),
                            // ignore: deprecated_member_use
                            SizedBox(height: height*0.1,width:width*0.48,child: new RaisedButton(
                              child: DefaultTextStyle(style: new TextStyle(color: Colors.white,fontSize: 10), child: CaTeX(questions2[index].answers[2])),onPressed: ()async{
                              if(questions2[index].answers[2] == questions2[index].correct){
                                setState(() {
                                  b3 = green;
                                  isSolved = true;
                                });
                                await player.setAsset("assets/Correct.mp3");
                                await player.play();
                              }
                              else{
                                setState(() {
                                  b3 = wrong;
                                  Timer(Duration(seconds: 2),(){
                                    setState(() {
                                      b3 = normalColor;
                                    });
                                  });
                                });
                              }
                            },color: b3,shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50.0))),)),
                            Expanded(child: SizedBox()),
                            // ignore: deprecated_member_use
                            SizedBox(height: height*0.1,width:width*0.48,child: new RaisedButton(child: DefaultTextStyle(style: new TextStyle(color: Colors.white,fontSize: 10), child: CaTeX(questions2[index].answers[3])),onPressed: ()async {
                              if(questions2[index].answers[3] == questions2[index].correct){
                                setState(() {
                                  b4 = green;
                                  isSolved = true;
                                });
                                await player.setAsset("assets/Correct.mp3");
                                await player.play();
                              }
                              else{
                                setState(() {
                                  b4 = wrong;
                                  Timer(Duration(seconds: 2),(){
                                    setState(() {
                                      b4 = normalColor;
                                    });
                                  });
                                });
                              }
                            },color: b4,shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))),)),
                            new SizedBox(width: width*0.01,)
                          ],
                        ),
                      ),
                      new SizedBox(
                        height: height*0.017,
                      ),

                    ],
                  ),
                ),
              ),

            ],
          )
      ),
      floatingActionButton: (isSolved ? FloatingActionButton(
        backgroundColor: normalColor,
        child: new Icon(Icons.arrow_forward,color: Colors.white,),
        onPressed: (){
          if(l!=h){
            setState(() {
              b1 = normalColor;
              b2 = normalColor;
              b3 = normalColor;
              b4 = normalColor;
              isSolved = false;
              l++;
              index++;
              solved++;
              mark++;

            });
          }

          else{
            mark++;
            showMarks(context,mark,h,height,width);
          }
        },
      ) : null),
    );
  }
}


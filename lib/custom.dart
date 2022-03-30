import 'package:catex/catex.dart';
import 'package:flutter/material.dart';
import 'package:math_quiz/home.dart';
import 'package:math_quiz/quiz.dart';
import 'package:math_quiz/quiz2.dart';
Widget question(var h,var w,var quest,var req,var key){
  return AnimatedContainer(
    key:  key,
      duration: Duration(milliseconds: 250,),
      alignment: Alignment.center,
      width: w*0.9,
      height: h*0.45,
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(66, 39, 255, 1),
          spreadRadius: 5,
          blurRadius: 5
        ),
      ],borderRadius: BorderRadius.all(Radius.circular(30)),
    ),
    child: new SingleChildScrollView(
      child: DefaultTextStyle(
        style: new TextStyle(
          fontSize: 18,
          color: Colors.black
        ),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CaTeX(quest),
            new Text("\n"),
            CaTeX(req)
          ],
        ),
      ),
    ),
  );
}
Widget info(var height,var width,var txt){
  return new Container(
    width: width*0.1,
    height: height*0.2,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: Color.fromRGBO(66,39,255,1),
      borderRadius: BorderRadius.all(Radius.circular(30))
    ),
    child: new Text(txt,style: new TextStyle(color: Colors.white),),
  );
}
Future<void> showMarks(BuildContext context,var l,var h,var height,var width) async {
  return showDialog<void>(

    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Color.fromRGBO(66,39,255,1),
        title: Text('Congrats!',style: new TextStyle(color: Colors.white),),
        content: SingleChildScrollView(
          child: new Container(
            color: Colors.transparent,
            alignment: Alignment.center,
            width: width*0.5,
            height: height*0.2,
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('you Solved\n',style: new TextStyle(color: Colors.white,fontSize: 20),),
                Text('$l/$h',style: new TextStyle(color: Colors.white,fontSize: 15),),
              ],
            ),
          )
        ),
        actions: <Widget>[
          TextButton(
            child: Text('Done',style: new TextStyle(color: Colors.white),),
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => Home()), (route) => false);
            },

          ),
        ],
      );
    },
  );
}
Future<void> showHelp(BuildContext context,var data,var height,var width) async {
  return showDialog<void>(

    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(

        backgroundColor: Color.fromRGBO(66,39,255,1),
        title: Text('Help',style: new TextStyle(color: Colors.white),),
        content: SingleChildScrollView(
            child: new Container(
              color: Colors.transparent,
              alignment: Alignment.center,
              width: width,
              height: height*0.7,
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DefaultTextStyle(style: new TextStyle(color: Colors.white,fontSize: 10,locale: Locale("en")), child: CaTeX(data))
                ],
              ),
            )
        ),
        actions: <Widget>[
          TextButton(
            child: Text('Done',style: new TextStyle(color: Colors.white),),
            onPressed: () {
              Navigator.pop(context);
            },

          ),
        ],
      );
    },
  );
}
Future<void> choose(BuildContext context,var height,var width) async {
  return showDialog<void>(

    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        title: Text('Choose',style: new TextStyle(color: Color.fromRGBO(66,39,255,1)),),
        content: SingleChildScrollView(
            child: new Container(
              color: Colors.transparent,
              alignment: Alignment.center,
              width: width*0.7,
              height: height*0.3,
              child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  new SizedBox(
                    width: width*0.7,
                    height: height*0.09,
                    // ignore: deprecated_member_use
                    child: new RaisedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Quiz()));
                    },color: Color.fromRGBO(66,39,255,1)
                      ,
                    child: new Text("Part 1" , style: new TextStyle(color: Colors.white),),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
                    ),
                  ),
                  new SizedBox(
                    height: height*0.02,
                  ),
                  new SizedBox(
                    width: width*0.7,
                    height: height*0.09,
                    // ignore: deprecated_member_use
                    child: new RaisedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Quiz2()));
                    },color: Color.fromRGBO(66,39,255,1)
                      ,
                      child: new Text("Part 2" , style: new TextStyle(color: Colors.white),),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
                    ),
                  ),
                ],
              )
            )
        ),
        actions: <Widget>[
          TextButton(
            child: Text('Cancel',style: new TextStyle(color: Color.fromRGBO(66,39,255,1)),),
            onPressed: () {
              Navigator.pop(context);
            },

          ),
        ],
      );
    },
  );
}
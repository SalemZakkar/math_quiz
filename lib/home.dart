import 'package:catex/catex.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:math_quiz/about.dart';
import 'package:math_quiz/custom.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> with TickerProviderStateMixin {
  var infoH = 0.0;
  var animationController ;
  bool isPressed = false;
  @override
  void initState(){
    super.initState();
    animationController = new AnimationController(vsync: this,duration: Duration(milliseconds: 300));
  }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return new Scaffold(
      body: Container(
        width: width,
        height: height,
        color: Colors.white,
        alignment: Alignment.center,
        child: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              new Container(
                width: width,
              height: height*0.24,
              color: Color.fromRGBO(66,39,255,1),
              alignment: Alignment.center,
              child: SvgPicture.asset("assets/appBar.svg",height: height*0.5,width: width,alignment: Alignment.topCenter,),
              ),
              new SizedBox(
                height: height*0.03,
              ),
              new Container(
              height: height*0.6,
                width: width*0.9,
                color: Colors.white,
                child: SvgPicture.asset("assets/body.svg",alignment: Alignment.center,)
              ),
              Expanded(child: new SizedBox()),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    new Container(
                      width: width*0.2,
                      height: height*0.07,
                      child: new RaisedButton(
                        onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (c) => About()));
                        },
                        color: Color.fromRGBO(66,39,255,1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(22.0))
                        ),
                        child: AnimatedIcon(icon: AnimatedIcons.menu_arrow, progress: animationController,color: Colors.white,),
//                      IconButton(icon:
//
//
//                      )
                      ),

                    ),

                    new SizedBox(
                      width: width*0.05,
                    ),
                  new Container(
                    width: width*0.6,
                    height: height*0.07,
                    // ignore: deprecated_member_use
                    child: new RaisedButton(onPressed: (){
                      choose(context, height, width);
                    },
                      color: Color.fromRGBO(66,39,255,1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(22.0))
                      ),
                      child:new Text("GO For it",style: new TextStyle(color: Colors.white),)
                    ),
                  )
                ],
              ),
              new SizedBox(
                height: height*0.03,
              )
            ],
          ),
      ),

    );
  }
}

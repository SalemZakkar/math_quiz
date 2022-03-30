import 'package:flutter/material.dart';
import 'package:math_quiz/class&service.dart';
import 'package:math_quiz/custom.dart';
class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.height;
    return Scaffold(
     appBar: new AppBar(
       backgroundColor: Color.fromRGBO(66,39,255,1),
       title:new Text("About"),
       centerTitle: true,
       toolbarHeight: height*0.1,
     ),
      body: new Container(
        height: height,
        width: width,
        color: Colors.white,
        alignment: Alignment.center,
        child:new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Container(
              width: width,
              height: height*0.3,
              alignment: Alignment.center,
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  new CircleAvatar(
                    maxRadius: width*0.1,
                    child: Image.asset("assets/logo.png",),
                    minRadius: width*0.05,
                  ),
                  new Text("\nتم تصميم هذا التطبيق لمدرسة المتفوقين\nبإشراف",style: new TextStyle(color: Colors.black,fontSize: 13),textAlign: TextAlign.center,)
                ],
              ),
            ),
            new Container(
              width: width,
              height: height*0.1,
              color: Colors.white,
              alignment: Alignment.center,
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  new Text(teachers[0],style: new TextStyle(fontSize: 16),),
                  new Text(teachers[1],style: new TextStyle(fontSize: 16),),
                ],
              ),
            ),
       new Container(
         width: width,
         height: height*0.05,
         alignment: Alignment.center,
         child: new Text("إعداد",style: new TextStyle(fontSize: 16),),
       ),
            Expanded(child: new Container(
              alignment: Alignment.center,
            child: new GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (c,i) => new Text(names[i],textAlign: TextAlign.center,),itemCount: names.length,),
            ))
          ],
        ),
      ),
    );
  }
}

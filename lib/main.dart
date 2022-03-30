import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'home.dart';

void main() {

  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([

    DeviceOrientation.portraitUp,

  ]);

  runApp(

      new  MaterialApp(

      home: Home(),

      debugShowCheckedModeBanner: false,

  ));
}


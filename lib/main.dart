import 'package:flutter/material.dart';
import 'package:flutter_study_material_app/homePage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Study material",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

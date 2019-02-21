import 'package:flutter/material.dart';
import 'package:weido/pages/LoginPage.dart';
import 'package:camera/camera.dart';

List<CameraDescription> cameras;

Future<Null> main() async{
  cameras = await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weido-Easy Recording System',
      theme: ThemeData(

        primarySwatch: Colors.lightGreen,
      ),
      home: LoginPage(title: 'Weido | Easy Recording System',cameras: cameras),
    );
  }
}



import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:samsung_app/CameraHomeScreen.dart';


List<CameraDescription> cameras;

Future<Null> main() async {
  try {
    cameras = await availableCameras();
  } on CameraException catch (e) {
    //logError(e.code, e.description);
  }

  runApp(
    MaterialApp(
      title: "Camera App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CameraHomeScreen(cameras),
    )
  );

}
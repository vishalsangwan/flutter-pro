import 'dart:async';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class CameraPlugin extends StatefulWidget{
  List<CameraDescription> cameras;
  CameraPlugin(this.cameras);
  @override
  cameraRun createState() => cameraRun();
}

class cameraRun extends State<CameraPlugin>{

  CameraController controller;
  void initState(){
    super.initState();
    controller = CameraController(widget.cameras[0], ResolutionPreset.medium);
    controller.initialize().then((_){
      if(!mounted){
        return;
      }
      setState(() {});
    });
  }

  @override
  void dipose(){
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if(!controller.value.isInitialized){
      return new Container();
    }
    return  Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          IconButton(
            icon: const Icon(Icons.camera_alt),
            color: Colors.blue,
            onPressed: controller != null &&
                controller.value.isInitialized &&
                !controller.value.isRecordingVideo
                ? onTakePictureButtonPressed
                : null,
          ),
          IconButton(
            icon: const Icon(Icons.videocam),
            color: Colors.blue,
            onPressed: controller != null &&
                controller.value.isInitialized &&
                !controller.value.isRecordingVideo
                ? onVideoRecordButtonPressed
                : null,
          ),
          IconButton(
            icon: const Icon(Icons.stop),
            color: Colors.red,
            onPressed: controller != null &&
                controller.value.isInitialized &&
                controller.value.isRecordingVideo
                ? onStopButtonPressed
                : null,
          )
        ],
      );
    void onVideoRecordButtonPressed() {
      startVideoRecording().then((String filePath) {
        if (mounted) setState(() {});
        if (filePath != null) showInSnackBar('Saving video to $filePath');
      });
    }

    void onStopButtonPressed() {
      stopVideoRecording().then((_) {
        if (mounted) setState(() {});
        showInSnackBar('Video recorded to: $videoPath');
      });
    }

    Future<String> startVideoRecording() async {
      if (!controller.value.isInitialized) {
        showInSnackBar('Error: select a camera first.');
        return null;
      }
    }
  }


  }



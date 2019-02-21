import 'package:flutter/material.dart';
import 'package:weido/pages/camera.dart';




class RecordingPage extends StatefulWidget {
  var cameras;
  RecordingPage(this.cameras);
  @override
  RecordingPageState createState() {
    return new RecordingPageState();
  }
}

class RecordingPageState extends State<RecordingPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(appBar: AppBar(), body: Column(
      mainAxisAlignment: MainAxisAlignment.start,

      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 8.0),
          child: RaisedButton(onPressed:(){
          Navigator.push(context,
          MaterialPageRoute(builder:(context)=>CameraPlugin(widget.cameras)),
          );
          },
            child: Text("Start Recording"),
          ),
        ),
        Divider(),
        Expanded(child: Text("Gallery will come here"))
      ],
    ));
  }
}

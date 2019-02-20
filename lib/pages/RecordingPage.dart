import 'package:flutter/material.dart';

class RecordingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(appBar: AppBar(), body: Column(
      mainAxisAlignment: MainAxisAlignment.start,

      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 8.0),
          child: RaisedButton(onPressed:(){ Navigator.pop(context);},
            child: Text("Start Recording"),
          ),
        ),
        Divider(),
        Expanded(child: Text("Gallery will come here"))
      ],
    ));
  }
}

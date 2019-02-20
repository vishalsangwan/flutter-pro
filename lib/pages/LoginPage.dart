import 'package:flutter/material.dart';
import 'package:weido/pages/RecordingPage.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title,
        style: TextStyle(color: Colors.green, decorationStyle: TextDecorationStyle.solid),),
        backgroundColor: Colors.white,


      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: 'Email or Username'
              ),
            ),
            SizedBox(
              height: 10
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  labelText: 'Password'
              ),
            ),
            RaisedButton(
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder:(context)=>RecordingPage()),
                );
              },

              child: Text("Login", style: TextStyle(color: Colors.green
              ) ),
              splashColor: Colors.lightGreenAccent,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),


            )


          ],
        ),
      )


    );
  }
}

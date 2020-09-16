import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mdoctor/Screens/MemberLogin/MemberLogin.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return WelcomeState();
  }
}

class WelcomeState extends State<WelcomeScreen> {
  // This widget is the root of your application.
  @override
  void initState() {
  // TODO: implement initState
  super.initState();
  startTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4749a0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top:350.0),
              child: Image.asset('./assets/images/logo.png',
                  height:30),
            ),
            Padding(
              padding: EdgeInsets.only(top:300.0),
              child: Image.asset('./assets/images/logo2.png',
                  height:60),
            )
          ],
        ),
      ),
    );
  }
  startTime() async {
    var duration = new Duration(seconds: 5);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => MemberLogin()
      )
    );
  }

}
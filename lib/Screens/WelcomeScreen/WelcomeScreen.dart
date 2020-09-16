import 'package:flutter/material.dart';


class WelcomeScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4749a0) ,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('logo.png',
            width:200,
            height:400),
//            Text(
//              'MDoctor',
//            ),
          ],
        ),
      ),
    );
  }

}
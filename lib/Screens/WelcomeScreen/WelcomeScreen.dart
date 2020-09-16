import 'package:flutter/material.dart';


class WelcomeScreen extends StatelessWidget {
  // This widget is the root of your application.
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

}
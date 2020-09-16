import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';


class MemberLogin extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4749a0),
      body: Column(children: <Widget>[
        Container(
          margin: EdgeInsets.only(top:60),
          child: Padding(
            padding: EdgeInsets.only(right:320),
            child: Image.asset('./assets/images/back.png',
                width:20),
          ),
        ),
        Container(

          child: Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left:30),
                child: Image.asset('./assets/images/MLogintext.png',
                    width:140),
              ),
              Padding(
                padding: EdgeInsets.only(left:120.0),
                child: Image.asset('./assets/images/MLoginlogo.png',
                    width:100),
              )
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          constraints: BoxConstraints.tightForFinite(
            height:608,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.0),
                topRight: Radius.circular(25.0)
            ),
          ),
          child: Column(children: <Widget>[
            Row(children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left:30,top:60),
                child: Text('Mobile Number',
                  style: TextStyle(
                          color: Color(0xff4749a0),
                          fontWeight: FontWeight.bold,
                          fontSize: 20)
                  ),
              ),
            ]
            ),
            Row(children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left:20,top:10),
                child: CountryCodePicker(
                  initialSelection: 'IN',
                )
              ),
              Padding(
                  padding: EdgeInsets.only(left:20),
                  child: SizedBox(width: 200,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Enter your Mobile Number",
                        ),
                      )
                  ),
              ),

            ]
            ),
            Row(children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left:30,top:30),
                child: Text('Password',
                    style: TextStyle(
                        color: Color(0xff4749a0),
                        fontWeight: FontWeight.bold,
                        fontSize: 20)
                ),
              ),
            ]
            ),
            Row(children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left:40),
                child: SizedBox(width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Enter your Password",
                      ),
                    )
                ),
              ),

            ]
            ),
            Row(children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left:190,top:30),
                child: Text('Forgot your Password?',
                    style: TextStyle(
                        color: Color(0xff4749a0),
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        fontSize: 15)
                ),
              ),

            ]
            ),
            Row(children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left:110,top:40),
                child: SizedBox(
                  width:150.0,
                  height:50.0,
                  child: RaisedButton(
                    color:Color(0xfffc8f56),
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                    onPressed: () {  },
                    child:Text('Sign In',
                        style: TextStyle(
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.bold,
                            fontSize: 15)

                    ),
                  ),
                )


              )
            ]
            ),
            Row(children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(left:70,top:40),
                  child: Text('Don\'t have an account ' ,
                          style: TextStyle(
                              color: Color(0xff000000),
//                              fontWeight: FontWeight.bold,
                              fontSize: 15)
                      ),
              ),
              Padding(
                padding: EdgeInsets.only(top:40),
                child: Text('Sign Up' ,
                    style: TextStyle(
                        color: Color(0xfffc8f56),
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        fontSize: 15)
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:40),
                child: Text(' now',
                    style: TextStyle(
                        color: Color(0xff000000),
//                              fontWeight: FontWeight.bold,
                        fontSize: 15)
                ),
              )
            ]
            ),
          ]
          )

        ),
      ])



    );
  }

}
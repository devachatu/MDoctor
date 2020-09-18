import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:mdoctor/Screens/EditProfile/EditProfile.dart';
import 'package:mdoctor/Screens/HomeScreen/HomeScreen.dart';
import 'package:mdoctor/Screens/PasswordChange/PasswordChange.dart';
import 'package:mdoctor/Screens/WelcomeScreen/WelcomeScreen.dart';


class MemberLogin extends StatelessWidget {
  static String PassWord,PhoneNum;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4749a0),
      body: Column(children: <Widget>[
        Align(
          alignment: Alignment.topLeft,
          child:
          IconButton(
            padding: EdgeInsets.only(top:40,left:10),
            onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) => WelcomeScreen()));
            },
            icon:Icon(Icons.arrow_back_ios,
                color:Colors.white),
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
          height:MediaQuery.of(context).size.height*0.734,
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
                        onChanged: (newText) { PhoneNum = newText; },
                        decoration: InputDecoration(
                          hintText: "Enter your Mobile Number",
                          hintStyle: TextStyle(color: Colors.grey),
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
                    child: TextFormField(
                      onChanged: (newText) { PassWord = newText; },
                      obscureText: true,
                      validator: (val) => val.length < 6 ? 'Password too short.' : null,
                      decoration: InputDecoration(
                        hintText: "Enter your Password",
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    )
                ),
              ),

            ]
            ),
            Row(children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left:190,top:30),
                child:GestureDetector(
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context) => PasswordChange()));
                  },
                  child:Text('Forgot your Password?',
                      style: TextStyle(
                          color: Color(0xff4749a0),
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          fontSize: 15)
                  ),
                )

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
                      onPressed: () { Navigator.pushReplacement(context, MaterialPageRoute(
                          builder: (context) => HomeScreen())); },
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
                child:GestureDetector(
                      onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(
                            builder: (context) => EditProfile()));
                      },
                      child:Text('Sign Up' ,
                      style: TextStyle(
                        color: Color(0xfffc8f56),
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        fontSize: 15)
    ),
    )

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
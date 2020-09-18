import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mdoctor/Screens/MemberLogin/MemberLogin.dart';
class PasswordChange extends StatefulWidget{
  @override
  _PasswordChangeState createState() => _PasswordChangeState();
}
class _PasswordChangeState extends State<PasswordChange>{
  String name,dob, medID,selectedChoice = "",emailID,experienceInYears,qualifications,specializations  ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              height: 200,
              decoration: BoxDecoration(
                  color: Color(0xff4749a0)
              ),
              child:Align(
                alignment: Alignment.topLeft,
                child:
                IconButton(
                  padding: EdgeInsets.only(top:40,left:10),
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context) => MemberLogin()));
                  },
                  icon:Icon(Icons.arrow_back_ios,
                      color:Colors.white),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left:120, right: 0,top: 40),
              child:     Text("PASSWORD CHANGE",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
            ),
            Column(
              children:<Widget> [
                Padding(
                  padding: EdgeInsets.only(left: 45, right: 20,top: 120),
                  child:  ClipRRect(
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                      child:Material(
                          elevation: 30.0,
                          child: Container(
                            height: 430,
                            width: MediaQuery.of(context).size.width * 0.8,
                            decoration: BoxDecoration(
                              boxShadow: [BoxShadow(
                                color: Colors.black,
                                blurRadius: 2.0,
                                spreadRadius: 10.0,
                                offset: Offset(10.0, 10.0), // shadow direction: bottom right
                              )
                              ],
                              color: Colors.white,
                            ),
                            child: ListView(
                                scrollDirection: Axis.vertical,
                                children:<Widget>[
                                  Column(
                                    children:<Widget> [
                                      Padding(
                                        padding: EdgeInsets.only(right:150,top: 20),
                                        child: Text('Current Password',
                                            style: TextStyle(
                                                color: Color(0xff4749a0),
                                                fontSize: 15)
                                        ),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(right: 20,left:20,top:10),
                                          child: TextFormField(keyboardType: TextInputType.name,
                                            decoration: InputDecoration(
                                              hintText: "Enter Current Password",
                                              hintStyle: TextStyle(color: Colors.grey),
                                            ),
                                            onChanged: (value) {
                                              setState(() {
                                                name = value;
                                              });
                                            },
                                          )
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(right:170,top: 20),
                                        child: Text('New Password',
                                            style: TextStyle(
                                                color: Color(0xff4749a0),

                                                fontSize: 15)
                                        ),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(right: 20,left:20,top:10),
                                          child: TextFormField(keyboardType: TextInputType.datetime,
                                            decoration: InputDecoration(
                                              hintText: "Enter New Password",
                                              hintStyle: TextStyle(color: Colors.grey),
                                            ),
                                            onChanged: (value) {
                                              setState(() {
                                                dob = value;
                                              });
                                            },
                                          )
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(right:110,top: 20),
                                        child: Text('Confirm New Password',
                                            style: TextStyle(
                                                color: Color(0xff4749a0),

                                                fontSize: 15)
                                        ),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(right: 20,left:20,top:10),
                                          child: TextFormField(keyboardType: TextInputType.text,
                                            decoration: InputDecoration(
                                              hintText: "Confirm New Password",
                                              hintStyle: TextStyle(color: Colors.grey),
                                            ),
                                            onChanged: (value) {
                                              setState(() {
                                                medID = value;
                                              });
                                            },
                                          )
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(left:0,top:40),
                                          child: SizedBox(
                                            width:120.0,
                                            height:40.0,
                                            child: RaisedButton(
                                              color:Color(0xfffc8f56),
                                              elevation: 5.0,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(8.0)),
                                              onPressed: () { },
                                              child:Text('Save',
                                                  style: TextStyle(
                                                      color: Color(0xffffffff),
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 15)

                                              ),
                                            ),
                                          )


                                      )
                                    ],
                                  )
                                ]
                            ),
                          )
                      )
                  ),
                ),
              ],
            ),
          ],
        )
    );
  }

}

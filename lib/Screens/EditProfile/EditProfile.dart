import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mdoctor/Screens/MemberLogin/MemberLogin.dart';
class EditProfile extends StatefulWidget{
  @override
  _EditProfileState createState() => _EditProfileState();
}
class _EditProfileState extends State<EditProfile>{
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
              padding: EdgeInsets.only(left:150, right: 0,top: 40),
              child:     Text("EDIT PROFILE",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
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
                          height: 670,
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
                                      padding: EdgeInsets.only(right:230,top: 20),
                                      child: Text('Name',
                                          style: TextStyle(
                                              color: Color(0xff4749a0),
                                              fontSize: 15)
                                      ),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(right: 20,left:20),
                                        child: TextFormField(keyboardType: TextInputType.name,
                                          onChanged: (value) {
                                            setState(() {
                                              name = value;
                                            });
                                          },
                                        )
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right:190,top: 20),
                                      child: Text('Date Of Birth',
                                          style: TextStyle(
                                              color: Color(0xff4749a0),

                                              fontSize: 15)
                                      ),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(right: 20,left:20),
                                        child: TextFormField(keyboardType: TextInputType.datetime,
                                          onChanged: (value) {
                                            setState(() {
                                              dob = value;
                                            });
                                          },
                                        )
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right:230,top: 20),
                                      child: Text('Gender',
                                          style: TextStyle(
                                              color: Color(0xff4749a0),

                                              fontSize: 15)
                                      ),
                                    ),
                                    Row(
                                      children:<Widget> [
                                        Padding(

                                          padding: EdgeInsets.only(left: 30),

                                          child: ChoiceChip(

                                            label: Text("Male"),
                                            elevation: 5.0,
                                            labelStyle: TextStyle(
                                                color: Colors.black, fontSize: 14.0),

                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(0.0),
                                            ),
                                            backgroundColor: Color(0xffededed),
                                            selectedColor: Color(0xfffc8f56),
                                            selected: selectedChoice == "Male",
                                            onSelected: (selected) {
                                              setState(() {
                                                selectedChoice = "Male";
                                              });
                                            },
                                          ),

                                        ),
                                        Padding(

                                          padding: EdgeInsets.only(left:20),

                                          child: ChoiceChip(
                                            elevation: 5.0,

                                            label: Text("Female"),
                                            labelStyle: TextStyle(
                                                color: Colors.black, fontSize: 14.0),

                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(0.0),
                                            ),
                                            backgroundColor: Color(0xffededed),
                                            selectedColor: Color(0xfffc8f56),
                                            selected: selectedChoice == "Female",
                                            onSelected: (selected) {
                                              setState(() {
                                                selectedChoice = "Female";
                                              });
                                            },
                                          ),

                                        ),
                                        Padding(

                                          padding: EdgeInsets.only(left:20),

                                          child: ChoiceChip(
                                            elevation: 5.0,

                                            label: Text("Others"),
                                            labelStyle: TextStyle(
                                                color: Colors.black, fontSize: 14.0),

                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(0.0),
                                            ),
                                            backgroundColor: Color(0xffededed),
                                            selectedColor: Color(0xfffc8f56),
                                            selected: selectedChoice == "Others",
                                            onSelected: (selected) {
                                              setState(() {
                                                selectedChoice = "Others";
                                              });
                                            },
                                          ),

                                        )
                                      ],

                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right:195,top: 20),
                                      child: Text('Medicare ID',
                                          style: TextStyle(
                                              color: Color(0xff4749a0),

                                              fontSize: 15)
                                      ),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(right: 20,left:20),
                                        child: TextFormField(keyboardType: TextInputType.text,
                                          onChanged: (value) {
                                            setState(() {
                                              medID = value;
                                            });
                                          },
                                        )
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right:220,top: 20),
                                      child: Text('Email ID',
                                          style: TextStyle(
                                              color: Color(0xff4749a0),

                                              fontSize: 15)
                                      ),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(right: 20,left:20),
                                        child: TextFormField(keyboardType: TextInputType.text,
                                          onChanged: (value) {
                                            setState(() {
                                              emailID = value;
                                            });
                                          },
                                        )
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right:150,top: 20),
                                      child: Text('Experience in years',
                                          style: TextStyle(
                                              color: Color(0xff4749a0),

                                              fontSize: 15)
                                      ),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(right: 20,left:20),
                                        child: TextFormField(keyboardType: TextInputType.text,
                                          onChanged: (value) {
                                            setState(() {
                                              experienceInYears = value;
                                            });
                                          },
                                        )
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right:185,top: 20),
                                      child: Text('Qualifications',
                                          style: TextStyle(
                                              color: Color(0xff4749a0),

                                              fontSize: 15)
                                      ),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(right: 20,left:20),
                                        child: TextFormField(keyboardType: TextInputType.text,
                                          onChanged: (value) {
                                            setState(() {
                                              qualifications = value;
                                            });
                                          },
                                        )
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right:190,top: 20),
                                      child: Text('Specialization',
                                          style: TextStyle(
                                              color: Color(0xff4749a0),

                                              fontSize: 15)
                                      ),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(right: 20,left:20),
                                        child: TextFormField(keyboardType: TextInputType.text,
                                          onChanged: (value) {
                                            setState(() {
                                              specializations = value;
                                            });
                                          },
                                        )
                                    ),
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
            Padding(padding: EdgeInsets.only(left: 160, right: 0,top: 60),
              child: Inslogo(),
            ),
          ],
        )
    );
  }

}
class Inslogo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage logo = AssetImage('assets/images/personlogo.png');
    Image image = Image(image: logo,);
    return Material(
      elevation: 20,shape: CircleBorder(),
      child: Container(child: image,height: 110.0,width: 110.0,),
    );

  }

}
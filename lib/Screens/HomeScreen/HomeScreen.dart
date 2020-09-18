import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mdoctor/Screens/MemberLogin/MemberLogin.dart';

//import 'pack/fluttertoast.dart'
class HomeScreen extends StatefulWidget{
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen>{

 singleCard(Image image, Text text){
   Color col;
   IconData ico;
    switch(text.data){

      case 'Member' :
        col=Color(0xff3ec7f3);
        ico=Icons.person;
        break;

      case 'General Practitioner (GP)' :
        col=Color(0xff6fd0c9);
        ico=Icons.person_outline;
        break;

      case 'Specialist' :
        col=Color(0xff68b981);
        ico=Icons.person_outline;
        break;
      case 'Pharmacy' :
        col=Color(0xffffa401);
        ico=Icons.local_hospital;
        break;
      case 'Diagnostic Lab' :
        col=Color(0xff96b8d4);
        ico=Icons.live_help;
        break;
      case 'Alternative Care' :
        col=Color(0xfffe5977);
        ico=EvaIcons.heart;
        break;

      default:
        col=Color(0xfffe5977);
        ico=Icons.person;
    }
    return Card(
      elevation: 5,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child:Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child:Padding(
              padding: EdgeInsets.only(top:20),
              child:ClipRRect(
                borderRadius:BorderRadius.circular(10),
                child:Container(
                  padding: EdgeInsets.only(top:0),
                  height: MediaQuery.of(context).size.height*0.12,
                  width:MediaQuery.of(context).size.width*0.35,
                  color: col,
                  child:Align(
                    alignment: Alignment.center,
                    child:Icon(ico,size: 40,),
                  ),
                ),
              )
            )


          ),
          Align(
              alignment:Alignment.bottomCenter,
              child:Padding(
                padding: EdgeInsets.only(bottom:10),
                child:text,
              ))
        ],
      )
      );
  }
  String name,dob, medID,selectedChoice = "",emailID,experienceInYears,qualifications,specializations  ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              height: 170,
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
            Padding(padding: EdgeInsets.only(left: 25, right: 25,top: 120),child:  ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                child:Material(
                    elevation: 30.0,
                    child: Container(
                      height: 670,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 2.0,
                            spreadRadius: 10.0,
                            offset: Offset(10.0, 10.0), // shadow direction: bottom right
                          )
                        ],
                        color: Color(0xfff9f9f9),
                      ),
                      child:Stack(
                        children:<Widget> [
                          Padding(padding: EdgeInsets.only(top: 25,left: 10),child:
                          Text("Hello I'm",style: TextStyle(fontSize: 35,fontWeight:FontWeight.bold,color: Color(0xff4749a0)),),),

                          Padding(padding: EdgeInsets.only(top: 80),child: GridView.count(crossAxisCount: 2,crossAxisSpacing: 5,mainAxisSpacing: 10,
                            children: <Widget>[

                              //    Padding(padding: EdgeInsets.only(right: 10,left: 10,top: 70,bottom: 10),child: Text("Hello,I'nnnm"),),
                              Padding(padding: EdgeInsets.only(left: 10),child: singleCard(Image(image: AssetImage('lib/images/img1.png'),height: 130,width: 200,),
                                  Text("Member",style: TextStyle(color: Color(0xff3ec7f3),fontSize: 13,fontWeight: FontWeight.bold),
                                  )
                              ),),
                              Padding(padding: EdgeInsets.only(right: 10),child: singleCard(Image(image: AssetImage('lib/images/img2.png'),height: 130,width: 200,),
                                  Text("General Practitioner (GP)",style: TextStyle(color: Color(0xff6fd0c9),fontSize: 13,fontWeight: FontWeight.bold),
                                  )
                              ),),

                              Padding(padding:EdgeInsets.only(left: 10),child:singleCard(Image(image: AssetImage('lib/images/img3.png'),height: 130,width: 200,),
                                  Text("Specialist",style: TextStyle(color: Color(0xff68b981),fontSize: 13,fontWeight: FontWeight.bold),
                                  )
                              ),),
                              Padding(padding: EdgeInsets.only(right: 10),child:singleCard(Image(image: AssetImage('lib/images/img4.png'),height: 130,width: 200,),
                                  Text("Pharmacy",style: TextStyle(color: Color(0xffffa401),fontSize: 13,fontWeight: FontWeight.bold),
                                  )
                              ),),

                              Padding(padding: EdgeInsets.only(left: 10),child:singleCard(Image(image: AssetImage('lib/images/img5.png'),height: 130,width: 200,),
                                  Text("Diagnostic Lab",style: TextStyle(color: Color(0xff96b8d4),fontSize: 10,fontWeight: FontWeight.bold),
                                  )
                              ),),

                              Padding(padding: EdgeInsets.only(right: 10),child: singleCard(Image(image: AssetImage('lib/images/img6.png'),height: 130,width: 200,),
                                  Text("Alternative Care",style: TextStyle(color: Color(0xfffe5977),fontSize: 13,fontWeight: FontWeight.bold),
                                  )
                              ),),

                            ],
                          ),)


                        ],
                      ),
                    )
                )
            ) ,),
          ],)
    );
  }

}

//class cardsclass extends StatelessWidget{
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body:
//      GridView.count(crossAxisCount: 2,
//        children: List.generate(1, (Index) {
//          return new Card(elevation: 5, child: Container(
//            height: 50,
//            color: Colors.red,
//            child: Text("$Index"),
//          ),);
//        }),
//      ),

//    );
//  }
//}
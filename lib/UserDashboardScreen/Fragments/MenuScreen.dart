import 'package:agcaller/constants/const_colors.dart';
import 'package:flutter/material.dart';
class MenuScreen extends StatefulWidget
{
  const MenuScreen({Key? key}) :super(key: key);
  _MenuScreenState createState()=>_MenuScreenState();
}
class _MenuScreenState extends State<MenuScreen>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: backgroundsColors,
     appBar: AppBar(
       backgroundColor: logoColors,
       title: Text(
           'Menu',),
     ),

      body:
      SingleChildScrollView(
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  Container(
                    width: 150,
                    height: 90,
                    child: Card(
                      elevation: 3,
                      color: whiteColors,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.notifications_active,color: Colors.greenAccent,),
                          Text('Followups',style: TextStyle(color: Colors.black),),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 90,
                    width: 150,
                    child: Card(
                      elevation: 3,
                      color: whiteColors,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.calendar_month,color: Colors.green,),
                          Text('Calendar',style: TextStyle(color: Colors.black),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  Container(
                    width: 150,
                    height: 90,
                    child: Card(
                      elevation: 3,
                      color: whiteColors,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.call,color: Colors.blue,),
                          Text('Call logs',style: TextStyle(color: Colors.black),),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 90,
                    width: 150,
                    child: Card(
                      elevation: 3,
                      color: whiteColors,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.show_chart,color: Colors.red,),
                          Text('Request Reports',style: TextStyle(color: Colors.black),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  Container(
                    width: 150,
                    height: 90,
                    child: Card(
                      elevation: 3,
                      color: whiteColors,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.bar_chart,color: Colors.red,),
                          Text('Advanced Reports',style: TextStyle(color: Colors.black),),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 90,
                    width: 150,
                    child: Card(
                      elevation: 3,
                      color: whiteColors,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.work_history_outlined,color: Colors.green,),
                          Text('Calendar',style: TextStyle(color: Colors.black),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  Container(
                    width: 150,
                    height: 90,
                    child: Card(
                      elevation: 3,
                      color: whiteColors,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.message,color: Colors.orangeAccent,),
                          Text('SMS Templates',style: TextStyle(color: Colors.black),),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 90,
                    width: 150,
                    child: Card(
                      elevation: 3,
                      color: whiteColors,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.mail,color: Colors.blue,),
                          Text('Email Templates',style: TextStyle(color: Colors.black),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  Container(
                    width: 150,
                    height: 90,
                    child: Card(
                      elevation: 3,
                      color: whiteColors,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.repeat,color: Colors.blue,),
                          Text('Rechurn Data',style: TextStyle(color: Colors.black),),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 90,
                    width: 150,
                    child: Card(
                      elevation: 3,
                      color: whiteColors,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.loop_outlined,color: Colors.orangeAccent,),
                          Text('Calendar',style: TextStyle(color: Colors.black),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  Container(
                    width: 150,
                    height: 90,
                    child: Card(
                      elevation: 3,
                      color: whiteColors,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.people_alt,color: Colors.red,),
                          Text('Interactions',style: TextStyle(color: Colors.black),),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 90,
                    width: 150,
                    child: Visibility(
                      visible: false,
                      child: Card(
                        elevation: 3,
                        color: whiteColors,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.calendar_month,color: Colors.green,),
                            Text('Calendar',style: TextStyle(color: Colors.black),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
            Container(
              margin: EdgeInsets.only(top: 30,left: 25),
              child: Text(
                "CALL TRACKING",
                style: TextStyle(color: logoColors,fontSize: 12),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5,left: 25),

              child: Row(
                children: [
                  Icon(Icons.calendar_today,color: logoColors,size: 16,),
                  SizedBox(
                    width: 10,
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Call Recordings Path \n',
                      style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.w300),
                      children: [
                        TextSpan(
                          text: '/storage/emulated/o/Sounds/CallRecording',
                          style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.w200)),
                      ],
                    ),
                  ),

                ],
              ),

            ),


            Container(
              margin: EdgeInsets.only(top: 3),
              child: Divider(
                color: Color(0xffe3e3e3),
                thickness: 0.5,
              ),

            ),

            Container(
              margin: EdgeInsets.only(top: 5,left: 25),

              child: Row(
                children: [
                  Icon(Icons.settings_suggest,color: logoColors,size: 16,),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Call Track Assist',
                      style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.w300),
                  ),

                ],
              ),

            ),


            Container(
              margin: EdgeInsets.only(top: 3),
              child: Divider(
                color: Color(0xffe3e3e3),
                thickness: 0.5,
              ),

            ),
            Container(
              margin: EdgeInsets.only(top: 3,left: 25,bottom: 2),
              child: Text(
                "OTHER",
                style: TextStyle(color: logoColors,fontSize: 12),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5,left: 25),

              child: Row(
                children: [
                  Icon(Icons.settings,color: logoColors,size: 16,),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Settings',
                    style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.w300),
                  ),

                ],
              ),

            ),


            Container(
              margin: EdgeInsets.only(top: 3),
              child: Divider(
                color: Color(0xffe3e3e3),
                thickness: 0.5,
              ),

            ),

            Container(
              margin: EdgeInsets.only(top: 5,left: 25),

              child: Row(
                children: [
                  Icon(Icons.key,color: logoColors,size: 16,),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Change Password',
                    style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.w300),
                  ),

                ],
              ),

            ),


            Container(
              margin: EdgeInsets.only(top: 3),
              child: Divider(
                color: Color(0xffe3e3e3),
                thickness: 0.5,
              ),

            ),
            Container(
              margin: EdgeInsets.only(top: 5,left: 25),

              child: Row(
                children: [
                  Icon(Icons.support_agent,color: logoColors,size: 16,),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Contact Support',
                    style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.w300),
                  ),

                ],
              ),

            ),


            Container(
              margin: EdgeInsets.only(top: 3),
              child: Divider(
                color: Color(0xffe3e3e3),
                thickness: 0.5,
              ),

            ),
            Container(
              margin: EdgeInsets.only(top: 5,left: 25),

              child: Row(
                children: [
                  Icon(Icons.privacy_tip_outlined,color: logoColors,size: 16,),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Privacy Policy",
                    style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.w300),
                  ),

                ],
              ),

            ),


            Container(
              margin: EdgeInsets.only(top: 3),
              child: Divider(
                color: Color(0xffe3e3e3),
                thickness: 0.5,
              ),

            ),
            Container(
              margin: EdgeInsets.only(top: 5,left: 25),

              child: Row(
                children: [
                  Icon(Icons.login,color: logoColors,size: 16,),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Logout',
                    style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.w300),
                  ),

                ],
              ),

            ),


            Container(
              margin: EdgeInsets.only(top: 3),
              child: Divider(
                color: Color(0xffe3e3e3),
                thickness: 0.5,
              ),

            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(bottom: 30),
                  child: Text(
                    "Version 1.0.0",
                    style: TextStyle(color: Colors.black,fontWeight: FontWeight.w100,fontSize: 10),
                  ),
                ),
            ),
          ],

        ),
      ),

    );
  }
}
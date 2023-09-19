import 'dart:async';

import 'package:flutter/material.dart';

import '../UserDashboardScreen/DashboardScreen.dart';
class SplashSreen extends StatefulWidget
{
  @override
  _SplashScreenState createState()=> _SplashScreenState();

}
class _SplashScreenState extends State<SplashSreen>
{
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3),()=>Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>DashboardScreen())));
  }

  @override
  Widget build(BuildContext context)
  {
    //
    return Scaffold(
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          child: Icon(Icons.person,color: Colors.red,size: 200,),
        ),
      ),
    );
  }
}
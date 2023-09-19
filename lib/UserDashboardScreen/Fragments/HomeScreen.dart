import 'package:flutter/material.dart';

import '../../constants/const_colors.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) :super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: backgroundsColors,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: logoColors,
        title: Text('agcaller'),
        actions: [
          Container(
            height: 2,
            padding: EdgeInsets.all(10),
            child: Card(
              color: logoColors,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 5,right: 5),
                      child: Text('Switch to admin',style: TextStyle(fontSize: 10,color: Colors.white),)
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      body: Container(
        height: 90,
        width: double.infinity,
        color: logoColors,
        child: Padding(
          padding: EdgeInsets.only(left: 20,right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 0,bottom: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Company Name',textAlign: TextAlign.left,style: TextStyle(color: whiteColors,fontSize: 14,fontWeight: FontWeight.bold),),
                    Text('Amit Singh',textAlign: TextAlign.left,style: TextStyle(color: whiteColors,fontWeight: FontWeight.w500,fontSize: 12),),
                    Row(
                      children: [
                        Icon(Icons.swap_vertical_circle_outlined,color: whiteColors,size: 15,),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Default process',textAlign: TextAlign.left,style: TextStyle(color: Color(
                            0xffd9b8b8),fontSize: 12),),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                children: [Icon(Icons.coffee,color: whiteColors,),
                  SizedBox(
                    width: 30,
                  ),
                Icon(Icons.power_settings_new_rounded,color: Colors.white,)
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
import 'package:agcaller/constants/const_colors.dart';
import 'package:flutter/material.dart';

class TodayScreens extends StatefulWidget
{
  const TodayScreens({Key? key}) :super(key: key);
  @override
  _TodayScreensState createState()=>_TodayScreensState();
}
class _TodayScreensState extends State<TodayScreens>
{
  bool isSwitched = false;
  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        //  textValue = 'Switch Button is ON';
      });
      print('Switch Button is ON');
    }
    else {
      setState(() {
        isSwitched = false;
        // textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
  }






    @override
  Widget build(BuildContext context)
  {

    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Container(
          width: double.infinity,
          height: 130,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Text('OUTBOUND',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w200),)
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        child: Card(
                          color: whiteColors,
                          elevation: 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.call_made,color: logoColors,size: 16,),
                              Text('0',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                              Text('ATTEMPTED',style: TextStyle(fontSize: 8,fontWeight: FontWeight.w300),),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text('data',style: TextStyle(color: backgroundsColors),),
                      Container(
                        height: 100,
                        width: 100,
                        child: Card(
                          color: whiteColors,
                          elevation: 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.block_flipped,color: logoColors,size: 16,),
                              Text('0',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                              Text('NOT CONTACTED',style: TextStyle(fontSize: 8,fontWeight: FontWeight.w300),),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text('data',style: TextStyle(color: backgroundsColors),),
                      Container(
                        height: 100,
                        width: 100,
                        child: Card(
                          color: whiteColors,
                          elevation: 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.call,color: logoColors,size: 16,),
                              Text('0',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                              Text('CONTACTED',style: TextStyle(fontSize: 8,fontWeight: FontWeight.w300),),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text('data',style: TextStyle(color: backgroundsColors),),
                      Container(
                        height: 100,
                        width: 100,
                        child: Card(
                          color: whiteColors,
                          elevation: 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.perm_identity_rounded,color: logoColors,size: 16,),
                              Text('0',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                              Text('OUTGOING\nPERSONAL',style: TextStyle(fontSize: 8,fontWeight: FontWeight.w300),),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Text('INBOUND',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w200),)
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        child: Card(
                          color: whiteColors,
                          elevation: 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.call_received,color: logoColors,size: 16,),
                              Text('0',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                              Text('RECEIVED',style: TextStyle(fontSize: 8,fontWeight: FontWeight.w300),),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text('data',style: TextStyle(color: backgroundsColors),),
                      Container(
                        height: 100,
                        width: 100,
                        child: Card(
                          color: whiteColors,
                          elevation: 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.call_missed,color: logoColors,size: 16,),
                              Text('0',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                              Text('MISSED',style: TextStyle(fontSize: 8,fontWeight: FontWeight.w300),),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text('data',style: TextStyle(color: backgroundsColors),),
                      Container(
                        height: 100,
                        width: 100,
                        child: Card(
                          color: whiteColors,
                          elevation: 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.call,color: logoColors,size: 16,),
                              Text('0',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                              Text('ANSWERED',style: TextStyle(fontSize: 8,fontWeight: FontWeight.w300),),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text('data',style: TextStyle(color: backgroundsColors),),
                      Container(
                        height: 100,
                        width: 100,
                        child: Card(
                          color: whiteColors,
                          elevation: 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.perm_identity_rounded,color: logoColors,size: 16,),
                              Text('0',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                              Text('INCOMING\nPERSONAL',style: TextStyle(fontSize: 8,fontWeight: FontWeight.w300),),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ],
          ),
        ),




        Container(
          //margin: EdgeInsets.all(16.0),
          height: 370,
          width: double.infinity,
          child: Card(
            elevation: 3,
            color: whiteColors,
            child: Padding(
              padding: EdgeInsets.all(0),
              child: Column(

                children: [

                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Avg. Talktime"),
                        Text('0m 0s',)
                      ],
                    ),
                  ),
                  Divider(
                    color: Color(0xffe3e0e0),
                    thickness: 1,

                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total Talktime"),
                        Text('0m 0s',)
                      ],
                    ),
                  ),
                  Divider(
                    color: Color(0xffe3e0e0),
                    thickness: 1,

                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Break Talktime"),
                        Text('0m 0s',)
                      ],
                    ),
                  ),
                  Divider(
                    color: Color(0xffe3e0e0),
                    thickness: 1,

                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Idle Talktime"),
                        Text('0m 0s',)
                      ],
                    ),
                  ),
                  Divider(
                    color: Color(0xffe3e0e0),
                    thickness: 1,

                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Wrapup Time"),
                        Text('0m 0s',)
                      ],
                    ),
                  ),
                  Divider(
                    color: Color(0xffe3e0e0),
                    thickness: 1,

                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Avg. Login Time"),
                        Text('0m 0s',)
                      ],
                    ),
                  ),

                ],
              ),
            ),

          ),
        ),

        Container(
          margin: EdgeInsets.only(left: 10,right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("STATUS",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300),),
              Row(
                children: [
                  Text('All',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                  Switch(
                    onChanged: toggleSwitch,
                    value: isSwitched,
                    activeColor: Colors.blue,
                    activeTrackColor: Colors.yellow,
                    inactiveThumbColor: Colors.redAccent,
                    inactiveTrackColor: Colors.orange,
                  ),
                  Text('Unique',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                ],
              )
            ],
          ),
        ),

        Container(
          //margin: EdgeInsets.all(16.0),
          height: 430,
          width: double.infinity,
          child: Card(
            elevation: 3,
            color: whiteColors,
            child: Padding(
              padding: EdgeInsets.all(0),
              child: Column(

                children: [

                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("open Missed Calls"),
                        Text('0',)
                      ],
                    ),
                  ),
                  Divider(
                    color: Color(0xffe3e0e0),
                    thickness: 1,

                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Hot Followup"),
                        Text('0',)
                      ],
                    ),
                  ),
                  Divider(
                    color: Color(0xffe3e0e0),
                    thickness: 1,

                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Sales Closed"),
                        Text('0',)
                      ],
                    ),
                  ),
                  Divider(
                    color: Color(0xffe3e0e0),
                    thickness: 1,

                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Cold Followup"),
                        Text('0',)
                      ],
                    ),
                  ),
                  Divider(
                    color: Color(0xffe3e0e0),
                    thickness: 1,

                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Appointment Fixed"),
                        Text('0',)
                      ],
                    ),
                  ),
                  Divider(
                    color: Color(0xffe3e0e0),
                    thickness: 1,

                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Not contacted"),
                        Text('0',)
                      ],
                    ),
                  ),
                  Divider(
                    color: Color(0xffe3e0e0),
                    thickness: 1,

                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Others"),
                        Text('0',)
                      ],
                    ),
                  ),

                ],
              ),
            ),

          ),
        ),

        Container(
          width: double.infinity,
          height: 80,
          margin: EdgeInsets.only(left: 10,right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("OPEN FOLLOWUPS",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300),),
              Text('Total-0',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w300),),
            ],
          ),
        ),
Container(
  width: double.infinity,
  alignment: Alignment.center,
  margin: EdgeInsets.only(bottom: 50),
  child: Text("No open followups",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w300),),
),



      ],
    );






  }
}
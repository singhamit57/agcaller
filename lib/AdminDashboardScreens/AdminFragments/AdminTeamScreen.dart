import 'package:agcaller/constants/const_colors.dart';
import 'package:flutter/material.dart';
class AdminTeamScreen extends StatefulWidget
{
  const AdminTeamScreen({Key? key}):super(key: key);
  @override
  _AdminTeamScreenState createState()=>_AdminTeamScreenState();
}
class _AdminTeamScreenState extends State<AdminTeamScreen>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar:  AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: logoColors,
        title: Text(
          "Team",
          style: TextStyle(color: whiteColors),
        ),
        actions: [
          Container(
            alignment: Alignment.center,
              margin: EdgeInsets.only(right: 10),
              child: Text("Add User",style: TextStyle(color: whiteColors),textAlign: TextAlign.center,))
        ],
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Designations",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                          SizedBox(height: 10,),
                          Text("1 Configure",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300),),
                        ],
                      ),
                      Icon(Icons.navigate_next),

                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 20),
                child: Text("Processes",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)),
            Container(
              margin: EdgeInsets.only(left: 20,right: 20,top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Default process"),
                      Text("Inbound & Outbound")
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.people_alt,color: logoColors,),
                      Text("1"),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 30,),
                child: Text("Swipe the process from right to left, to edit the process name",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w200),textAlign: TextAlign.start,))
          ],
        ),
      ),
    );
  }
}
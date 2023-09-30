import 'package:agcaller/constants/const_colors.dart';
import 'package:flutter/material.dart';

import '../AdminMenuScreensPages/AdminRecurringFollowupScreen.dart';

class AdminMenuScreen extends StatefulWidget
{
  const AdminMenuScreen({Key? key}):super(key: key);
  _AdminMenuScreenScreenState createState()=>_AdminMenuScreenScreenState();
}
class _AdminMenuScreenScreenState extends State<AdminMenuScreen>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: backgroundsColors,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: logoColors,
        title: Text(
          "Menu",
          style: TextStyle(color: whiteColors),
        ),
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>AdminRecurringFollowupScreen()));
            },
            child: Card(
              elevation: 0.0,
              color: backgroundsColors,
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.only(left: 15,top: 10),
                child: Row(
                  children: [
                    Icon(Icons.watch_later_outlined,color: logoColors,),
                    SizedBox(width: 30,),
                    Text("Configure recurring followup"),
                  ],
                ),
              ),
            ),
          ),
          Divider(
            thickness: 1,
            color: Color(0xffd2d0d0),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(left: 15,top: 10),
            child: Row(
              children: [
                Icon(Icons.calendar_today,color: logoColors,),
                SizedBox(width: 30,),
                Text("Acticity Logs"),
              ],
            ),
          ),
          Divider(
            thickness: 1,
            color: Color(0xffd2d0d0),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(left: 15,top: 10),
            child: Row(
              children: [
                Icon(Icons.vpn_key,color: logoColors,),
                SizedBox(width: 30,),
                Text("Change Password"),
              ],
            ),
          ),
          Divider(
            thickness: 1,
            color: Color(0xffd2d0d0),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(left: 15,top: 10),
            child: Row(
              children: [
                Icon(Icons.privacy_tip_outlined,color: logoColors,),
                SizedBox(width: 30,),
                Text("Privacy Policy"),
              ],
            ),
          ),
          Divider(
            thickness: 1,
            color: Color(0xffd2d0d0),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(left: 15,top: 10),
            child: Row(
              children: [
                Icon(Icons.no_accounts_outlined,color: logoColors,),
                SizedBox(width: 30,),
                Text("Delete Account"),
              ],
            ),
          ),
          Divider(
            thickness: 1,
            color: Color(0xffd2d0d0),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(left: 15,top: 10),
            child: Row(
              children: [
                Icon(Icons.login,color: logoColors,),
                SizedBox(width: 30,),
                Text("Logout"),
              ],
            ),
          ),
          Divider(
            thickness: 1,
            color: Color(0xffd2d0d0),
          ),
          SizedBox(height: 10,),
          Text("Version 3.6.14-2",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w200),),
        ],
      ),
    );
  }
}
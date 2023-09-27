import 'package:agcaller/constants/const_colors.dart';
import 'package:flutter/material.dart';

class CalendarSettingScreen extends StatefulWidget
{
  const CalendarSettingScreen({Key? key}): super(key: key);
  @override
  _CalendarSettingScreenState createState()=>_CalendarSettingScreenState();
}
class _CalendarSettingScreenState extends State<CalendarSettingScreen>
{
  bool light = true;
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: backgroundsColors,
      appBar: AppBar(
        backgroundColor: logoColors,
        title: Text(
          "Setting",
            style: TextStyle(color: whiteColors),
        ),
      ),
      body: Column(
        children: [

          Container(
            color: whiteColors,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Sync with local calendar"),
                          SizedBox(height: 5,),
                          Text("Syncs your new events to your local calendar",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w200),),

                        ],
                      ),
                  ),

                  Switch(
                    // This bool value toggles the switch.
                    value: light,
                    activeColor: logoColors,
                    onChanged: (bool value) {
                      // This is called when the user toggles the switch.
                      setState(() {
                        light = value;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            color: whiteColors,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Notify before (in mins)"),
                        SizedBox(height: 5,),
                        Text("Your local calendar will notify you based on this setting",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w200),),

                      ],
                    ),
                  ),

                  Switch(
                    // This bool value toggles the switch.
                    value: light,
                    activeColor: logoColors,
                    onChanged: (bool value) {
                      // This is called when the user toggles the switch.
                      setState(() {
                        light = value;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            color: whiteColors,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Sync interval (in mins)"),
                        SizedBox(height: 5,),
                        Text("Your calendar will Sync every few minutes based on this setting.",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w200),),

                      ],
                    ),
                  ),

                  Switch(
                    // This bool value toggles the switch.
                    value: light,
                    activeColor: logoColors,
                    onChanged: (bool value) {
                      // This is called when the user toggles the switch.
                      setState(() {
                        light = value;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
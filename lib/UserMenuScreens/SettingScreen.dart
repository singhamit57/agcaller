import 'package:agcaller/constants/const_colors.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundsColors,
      appBar: AppBar(
        backgroundColor: logoColors,
        title: Text(
          "Settings",
          style: TextStyle(color: whiteColors),
        ),
      ),
      body: Column(
        children: [
          Container(
            child: Card(
              elevation: 0.0,
              color: backgroundsColors,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.calendar_today,
                          color: logoColors,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text("Calender"),
                      ],
                    ),
                    Icon(Icons.navigate_next),
                  ],
                ),
              ),
            ),
          ),
          Container(
            color: whiteColors,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Use Business WhatsApp"),
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
          Container(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "When enabled, Business WhatsApp will be used for sendind whatsApp messages from Runo",
                style: TextStyle(fontSize: 12),
              ),
            ),
          ),
          Container(
            color: whiteColors,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Interaction summary Dialog"),
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
          Container(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "When enabled, an interation summary dialog with quik whatsapp, email and SMS action will be displayed after successfully submitting an interation",
                style: TextStyle(fontSize: 12),
              ),
            ),
          ),
          Container(
            color: whiteColors,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Limited Assign to option in CRM"),
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
          Container(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "when enabled,only the direct reportees, colleagues,manager will be shownunder Assign to option. When disable,all the users under current process will be shown under Assign to option.",
                style: TextStyle(fontSize: 12),
              ),
            ),
          ),

        ],
      ),
    );
  }
}

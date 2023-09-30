import 'package:agcaller/constants/const_colors.dart';
import 'package:flutter/material.dart';

class AdminRecurringFollowupScreen extends StatefulWidget
{
  const AdminRecurringFollowupScreen({Key? key}):super(key: key);
  @override
  _AdminRecurringFollowupScreenState createState()=>_AdminRecurringFollowupScreenState();
}
class _AdminRecurringFollowupScreenState extends State<AdminRecurringFollowupScreen>
{
  bool isChecked = false;
  @override
  Widget build(BuildContext context)
  {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return logoColors;
      }
      return backgroundsColors;
    }


    return Scaffold(
      backgroundColor: backgroundsColors,
      appBar: AppBar(
        backgroundColor: logoColors,
        title: Text(
          "Recurring Followup",
          style: TextStyle(color: whiteColors),
        ),
      ),
      body: Column(
        children: [
          Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Send email notification to"),
                SizedBox(height: 20,),
                Container(
                  margin:EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Assigned Users"),
                      Checkbox(
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Assigned Users"),
                      Checkbox(
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
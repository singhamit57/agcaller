import 'package:agcaller/constants/const_colors.dart';
import 'package:flutter/material.dart';

class RecurringFollowupScreen extends StatefulWidget
{
  const RecurringFollowupScreen({Key? key}):super(key: key);
  _RecurringFollowupScreenState createState()=>_RecurringFollowupScreenState();
}
class _RecurringFollowupScreenState extends State<RecurringFollowupScreen>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: backgroundsColors,
      appBar: AppBar(
        title: Text(
          "Recurring Followups",
          style: TextStyle(
            color: whiteColors
          ),
        ),
      ),
    );
  }
}
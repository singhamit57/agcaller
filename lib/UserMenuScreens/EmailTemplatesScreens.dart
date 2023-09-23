import 'package:agcaller/constants/const_colors.dart';
import 'package:flutter/material.dart';

class EmailTemplatesScreens extends StatefulWidget
{
  const EmailTemplatesScreens({Key? key}):super(key: key);
  @override
  _EmailTemplatesScreensState createState()=>_EmailTemplatesScreensState();
}
class _EmailTemplatesScreensState extends State<EmailTemplatesScreens>
{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: logoColors,
        title: Text(
          "Email Templates",
          style: TextStyle(color: whiteColors),
        ),
      ),
    );
  }
}
import 'package:agcaller/constants/const_colors.dart';
import 'package:flutter/material.dart';

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
    );
  }
}
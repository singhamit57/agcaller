import 'package:agcaller/constants/const_colors.dart';
import 'package:flutter/material.dart';
class MenuScreen extends StatefulWidget
{
  const MenuScreen({Key? key}) :super(key: key);
  _MenuScreenState createState()=>_MenuScreenState();
}
class _MenuScreenState extends State<MenuScreen>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
     appBar: AppBar(
       backgroundColor: logoColors,
       title: Text(
           'Menu',),
     ),
    );
  }
}
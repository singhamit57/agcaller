import 'dart:math';

import 'package:agcaller/AdminDashboardScreens/AdminFragments/AdminCrmFieldScreen.dart';
import 'package:agcaller/AdminDashboardScreens/AdminFragments/AdminHomeScreen.dart';
import 'package:agcaller/AdminDashboardScreens/AdminFragments/AdminLicenseScreen.dart';
import 'package:agcaller/AdminDashboardScreens/AdminFragments/AdminMenuScreen.dart';
import 'package:agcaller/AdminDashboardScreens/AdminFragments/AdminTeamScreen.dart';
import 'package:agcaller/constants/const_colors.dart';
import 'package:flutter/material.dart';

class AdminDashboardScreen extends  StatefulWidget
{
  const AdminDashboardScreen({Key? key}) : super(key: key);
  _AdminDashboardScreenState createState()=>_AdminDashboardScreenState();
}
class _AdminDashboardScreenState extends State<AdminDashboardScreen>
{

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[

    AdminHomeScreen(),
    AdminTeamScreen(),
    AdminLicenseScreen(),
    AdminCrmFieldScreen(),
    AdminMenuScreen(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt),
            label: "Team",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.vpn_key),
            label: "Licenses",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.connected_tv),
            label: "CRM Fields",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: "Menu",
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: IconsColors,
        onTap: _onItemTapped,
      ),



    );
  }
}
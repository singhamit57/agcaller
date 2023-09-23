import 'package:agcaller/constants/const_colors.dart';
import 'package:flutter/material.dart';

class FollowupsScreens extends StatefulWidget
{
  const FollowupsScreens({Key? key}) : super(key: key);
  @override
  _FollowupsScreensState createState()=>_FollowupsScreensState();
}
class _FollowupsScreensState extends State<FollowupsScreens>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(Icons.search,color: whiteColors,),
          SizedBox(
            width: 15,
          ),
          Icon(Icons.menu_open,color: whiteColors),
          SizedBox(width: 15,)
        ],
        backgroundColor: logoColors,
        title: Text(
          'Follow-ups',style: TextStyle(color: whiteColors),
        ),
      ),
    );
  }
}
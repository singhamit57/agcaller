import 'package:agcaller/constants/const_colors.dart';
import 'package:flutter/material.dart';

class RechurnDataScreens extends StatefulWidget
{
  const RechurnDataScreens({Key? key}) :super(key: key);
  @override
  _RechurnDataScreensState createState()=> _RechurnDataScreensState();
}
class _RechurnDataScreensState extends State<RechurnDataScreens>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: logoColors,
        actions: [
          Icon(Icons.menu_open,color: whiteColors,),
          SizedBox(width: 15,),
          Icon(Icons.history,color: whiteColors,),
          SizedBox(width: 15,)
        ],
        title: Text(
          "Rechurn Customers",
          style: TextStyle(color: whiteColors),
        ),
      ),

      body: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    child: Card(
                      elevation: 3,
                      child: Text(
                        "START DATE",
                        style: TextStyle(fontWeight: FontWeight.w200,fontSize: 8),
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ],
      ),
    );
  }
}
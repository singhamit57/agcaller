import 'package:agcaller/constants/const_colors.dart';
import 'package:flutter/material.dart';

class AdminCrmFieldScreen extends StatefulWidget
{
  const AdminCrmFieldScreen({Key? key}):super(key: key);
  _AdminCrmFieldScreenState createState()=>_AdminCrmFieldScreenState();
}
class _AdminCrmFieldScreenState extends State<AdminCrmFieldScreen>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: backgroundsColors,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: logoColors,
        actions: [
          OutlinedButton(
            onPressed: (){},
            child: Text(
                "Defailt Process",
              style: TextStyle(color: whiteColors),
            ),
          ),
        ],
        title: Text(
          "CRM Fields",
          style: TextStyle(color: whiteColors),
        ),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: 10,),
                Text("Preview",style: TextStyle(color: logoColors),),
                SizedBox(width: 10,),
                Text("Import",style: TextStyle(color: logoColors),),
                SizedBox(width: 10,)
              ],
            ),
            SizedBox(height: 30,),
            Padding(
              padding: EdgeInsets.only(left: 10,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("DEFAULT FIELDS*"),
                  Icon(Icons.navigate_next,)
                ],
              ),
            ),
            SizedBox(height: 40,),
            Padding(
              padding: EdgeInsets.only(left: 10,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("FIXED FIELD*"),
                  Icon(Icons.navigate_next,)
                ],
              ),
            ),
            SizedBox(height: 45,),
            Padding(
              padding: EdgeInsets.only(left: 10,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("CUSTOM FIELD*"),
                  Row(
                    children: [
                      Icon(Icons.add,color: logoColors,),
                      Text("Add Field",style: TextStyle(color: logoColors),)
                    ],
                  ),

                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
              alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 10),
                child: Text("*These fields are completely customizable",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w300),)),
            Container(
              height: 60,
              width: double.infinity,
              child: Card(
                child: Padding(
                  padding: EdgeInsets.only(left: 10,right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Option"),
                          Text("Source"),
                        ],
                      ),

                      Icon(Icons.text_rotation_none_outlined,color: logoColors,)
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Icon(Icons.expand_circle_down,color: logoColors,),
            SizedBox(height: 20,),
            Container(
              height: 60,
              width: double.infinity,
              child: Card(
                child: Padding(
                  padding: EdgeInsets.only(left: 10,right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Option"),
                          Text("Status"),
                        ],
                      ),
                      Container(
                        child: Row(
                          children: [
                            Icon(Icons.text_rotation_none_outlined,color: logoColors,),
                            SizedBox(width: 10,),
                            Icon(Icons.lock_outline,color: logoColors,),
                            SizedBox(width: 10,),
                            Icon(Icons.menu_open,color: logoColors,),
                            SizedBox(width: 10,),

                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Icon(Icons.expand_circle_down,color: logoColors,),
            SizedBox(height: 50,),
          ],
        ),
      ),
    );
  }
}
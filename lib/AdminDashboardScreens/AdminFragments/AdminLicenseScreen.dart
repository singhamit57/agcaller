import 'package:agcaller/constants/const_colors.dart';
import 'package:flutter/material.dart';

class AdminLicenseScreen extends StatefulWidget
{
  const AdminLicenseScreen({Key? key}):super(key: key);
  _AdminLicenseScreenState createState()=>_AdminLicenseScreenState();
}
class _AdminLicenseScreenState extends State<AdminLicenseScreen>
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
            "Licenses",
            style: TextStyle(color: whiteColors),
          ),
          actions: [
            Icon(Icons.menu_open,color: whiteColors,),
            SizedBox(width: 10,),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 5,left: 10,right: 10),
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Amit",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                                Text("Admin",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w300),),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Expires on:",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w300),),
                                Text("28 Sep 2023",style: TextStyle(color: Colors.red),)
                              ],
                            ),

                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Created on:",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
                            Text("18 SEP 2023",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                          ],
                        ),
                      ],
                    ),
                  ),

                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5,left: 10,right: 10),
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Amit",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                                Text("Admin",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w300),),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Expires on:",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w300),),
                                Text("28 Sep 2023",style: TextStyle(color: Colors.red),)
                              ],
                            ),

                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Created on:",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
                            Text("18 SEP 2023",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                          ],
                        ),
                      ],
                    ),
                  ),

                ),
              ),
            ],
          ),
        ),
      );
  }
}
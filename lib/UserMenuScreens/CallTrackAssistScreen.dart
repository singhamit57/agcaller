import 'package:agcaller/constants/const_colors.dart';
import 'package:flutter/material.dart';

class CallTrackAssistScreen extends StatefulWidget
{
  const CallTrackAssistScreen({Key? key}) :super(key: key);
  @override
  _CallTrackAssistScreenState createState()=>_CallTrackAssistScreenState();
}
class _CallTrackAssistScreenState extends State<CallTrackAssistScreen>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: backgroundsColors,
      appBar: AppBar(
        backgroundColor: logoColors,
        actions: [
          Container(
            alignment: Alignment.center,
              child: Text("v3.6.14-2",style: TextStyle(color: whiteColors,),)),
        ],
        title: Text(
          "Call Track Assist",
          style: TextStyle(color: whiteColors),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Card(
                elevation: 3,
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Device Info",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                          Text("Logs",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w200),),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        children: [
                         Icon(Icons.verified,color: Colors.green,size: 20,),
                          SizedBox(width: 12,),
                          Text("Model : LLD-AL10",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300),),
                        ],
                      ),
                      SizedBox(height: 8,),
                      Row(
                        children: [
                          Icon(Icons.verified,color: Colors.green,size: 20,),
                          SizedBox(width: 12,),
                          Text("Android : 9",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300)),
                        ],
                      ),
                      SizedBox(height: 8,),
                      Row(
                        children: [
                          Icon(Icons.verified,color: Colors.green,size: 20,),
                          SizedBox(width: 12,),
                          Text("RAM : 3 GB",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300),),
                        ],
                      ),
                      SizedBox(height: 15,),

                      Text("Installed on: 18-09-2023 10:38",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w200),),
                      SizedBox(height: 5,),
                      Text("Active Since: 5days 22hrs 51m)",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w200),),


                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              child: Card(
                elevation: 3,
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Permission",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                          Text("Logs",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w200),),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Icon(Icons.disabled_by_default_outlined,color: Colors.red,size: 20,),
                                SizedBox(width: 12,),
                                Text("Default Permissions",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300),),
                              ],
                            ),
                          ),
                          Text("Fix it",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300,color: Colors.red)),

                        ],
                      ),
                      SizedBox(height: 8,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Icon(Icons.disabled_by_default_outlined,color: Colors.red,size: 20,),
                                SizedBox(width: 12,),
                                Text("Battery Optimizations",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300),),
                              ],
                            ),
                          ),
                          Text("Fix it",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300,color: Colors.red)),

                        ],
                      ),
                      SizedBox(height: 8,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Icon(Icons.disabled_by_default_outlined,color: Colors.red,size: 20,),
                                SizedBox(width: 12,),
                                Text("Call tracking",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300),),
                              ],
                            ),
                          ),
                          Text("Fix it",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300,color: Colors.red)),

                        ],
                      ),
                      SizedBox(height: 8,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Icon(Icons.disabled_by_default_outlined,color: Colors.red,size: 20,),
                                SizedBox(width: 12,),
                                Text("Call Recording",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300),),
                              ],
                            ),
                          ),
                          Text("Know more",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300,color: Colors.orangeAccent)),

                        ],
                      ),
                      SizedBox(height: 8,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Icon(Icons.disabled_by_default_outlined,color: Colors.red,size: 20,),
                                SizedBox(width: 12,),
                                Text("Interaction Popup",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300),),
                              ],
                            ),
                          ),
                          Text("Fix it",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300,color: Colors.red)),

                        ],
                      ),
                      SizedBox(height: 15,),

                      Text("Installed on: 18-09-2023 10:38",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w200,color: Colors.red),),



                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              child: Card(
                elevation: 3,
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Tracking Sim",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                          Text("Logs",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w200),),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 2,color: backgroundsColors),
                        ),
                        child: Row(
                          children: [

                            Icon(Icons.sim_card,color: Colors.red,size: 50,),
                            Text("Sim detection failed. Check permissions.",style: TextStyle(fontSize: 14,),),
                          ],
                        ),
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
import 'package:agcaller/constants/const_colors.dart';
import 'package:flutter/material.dart';
class DialerScreen extends StatefulWidget
{
  
  const DialerScreen({Key? key}):super(key:key);
  @override
  _DialerScreenState createState()=>_DialerScreenState();
}
class _DialerScreenState extends State<DialerScreen>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: backgroundsColors,
      appBar: AppBar(
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: backgroundsColors,
        title: Text(
          ""
        ),
        actions: [
          Container(
            alignment: Alignment.center,
            //color: logoColors,
            child: Text("GOTO CRM FORM>",style: TextStyle(color: whiteColors,fontSize: 12,backgroundColor: logoColors),)
          ),
          SizedBox(width: 10,)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Call tracking is disable",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w300),),
                SizedBox(width: 5,),
                Icon(Icons.circle,color: Colors.red,size: 14,)
              ],
            ),
            SizedBox(height: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(shape: BoxShape.circle,color: whiteColors),
                  child: Text(
                    "1",
                    style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  width: 60,
                  height: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(shape: BoxShape.circle,color: whiteColors),
                  child: Column(
                    children: [
                      Text(
                        "2",
                        style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),
                      ),
                      Text("ABC",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w200,),)
                    ],
                  ),


                ),
                Container(
                  width: 60,
                  height: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(shape: BoxShape.circle,color: whiteColors),
                  child: Column(
                    children: [
                      Text(
                        "3",
                        style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),
                      ),
                      Text("DEF",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w200,),)
                    ],
                  ),


                ),

              ],
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(shape: BoxShape.circle,color: whiteColors),
                  child: Column(
                    children: [
                      Text(
                        "4",
                        style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),
                      ),
                      Text("GHI",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w200,),)
                    ],
                  ),


                ),
                Container(
                  width: 60,
                  height: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(shape: BoxShape.circle,color: whiteColors),
                  child: Column(
                    children: [
                      Text(
                        "5",
                        style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),
                      ),
                      Text("JKL",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w200,),)
                    ],
                  ),


                ),
                Container(
                  width: 60,
                  height: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(shape: BoxShape.circle,color: whiteColors),
                  child: Column(
                    children: [
                      Text(
                        "6",
                        style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),
                      ),
                      Text("MNO",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w200,),)
                    ],
                  ),


                ),

              ],
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(shape: BoxShape.circle,color: whiteColors),
                  child: Column(
                    children: [
                      Text(
                        "7",
                        style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),
                      ),
                      Text("PQRS",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w200,),)
                    ],
                  ),


                ),
                Container(
                  width: 60,
                  height: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(shape: BoxShape.circle,color: whiteColors),
                  child: Column(
                    children: [
                      Text(
                        "8",
                        style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),
                      ),
                      Text("TUV",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w200,),)
                    ],
                  ),


                ),
                Container(
                  width: 60,
                  height: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(shape: BoxShape.circle,color: whiteColors),
                  child: Column(
                    children: [
                      Text(
                        "9",
                        style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),
                      ),
                      Text("WXYZ",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w200,),)
                    ],
                  ),


                ),

              ],
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(shape: BoxShape.circle,color: whiteColors),
                  child: Text(
                    "*",
                    style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  width: 60,
                  height: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(shape: BoxShape.circle,color: whiteColors),
                  child: Column(
                    children: [
                      Text(
                        "0",
                        style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),
                      ),
                      Text("+",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w200,),)
                    ],
                  ),


                ),
                Container(
                  width: 60,
                  height: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(shape: BoxShape.circle,color: whiteColors),
                  child: Text(
                    "#",
                    style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),
                  ),
                ),

              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [


                Container(
                    width: 60,
                    height: 60,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(shape: BoxShape.circle,color: backgroundsColors),
                    child: Column(
                      children: [
                        Text(
                          "",
                          style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),
                        ),
                        Text("",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w200,),)
                      ],
                    ),


                  ),

                Container(
                  width: 60,
                  height: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.green),
                  child: Icon(Icons.call,color: whiteColors,),
                ),
                Container(
                  width: 60,
                  height: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(shape: BoxShape.circle,color: whiteColors),
                  child: Icon(Icons.clear)
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
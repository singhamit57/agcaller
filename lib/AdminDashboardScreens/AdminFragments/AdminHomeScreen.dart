import 'package:agcaller/UserDashboardScreen/DashboardScreen.dart';
import 'package:flutter/material.dart';

import '../../constants/const_colors.dart';
import '../AdminDashboardScreen.dart';

class AdminHomeScreen extends StatefulWidget
{
  const AdminHomeScreen({Key? key}):super(key: key);
  @override
 _AdminHomeScreenState createState()=>_AdminHomeScreenState();
}
 class _AdminHomeScreenState extends State<AdminHomeScreen>
 {
   @override
   Widget build(BuildContext context)
   {
     return Scaffold(

       appBar: AppBar(
         elevation: 0.0,
         backgroundColor: logoColors,
         title: Text('agcaller'),
         automaticallyImplyLeading: false,
         actions: [
           Container(
             height: 2,
             padding: EdgeInsets.all(10),
             child: Card(
               color: logoColors,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Padding(
                       padding: EdgeInsets.only(left: 5,right: 5),
                       child: GestureDetector(
                           onTap: (){
                             Navigator.push(context,MaterialPageRoute(builder: (context)=>DashboardScreen()));
                           },
                           child: Text('Switch to user',style: TextStyle(fontSize: 10,color: Colors.white),))
                   )
                 ],
               ),
             ),
           ),
         ],
       ),
       body: SingleChildScrollView(
         child: Column(
           children: [
             Container(
               height: 60,
               width: double.infinity,
               color: logoColors,
               child: Padding(
                 padding: EdgeInsets.only(left: 15,right: 15),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Padding(
                       padding: EdgeInsets.only(top: 0,bottom: 10),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text('Company Name',textAlign: TextAlign.left,style: TextStyle(color: whiteColors,fontSize: 14,fontWeight: FontWeight.bold),),
                           Text('Amit Singh',textAlign: TextAlign.left,style: TextStyle(color: whiteColors,fontWeight: FontWeight.w500,fontSize: 12),),

                         ],
                       ),
                     ),


                   ],
                 ),
               ),
             ),
             Row(
               children: [
                 Expanded(
                   flex: 5,
                   child: Container(
                     margin: EdgeInsets.only(top: 10,bottom: 10,left: 10,right: 5),
                     height: 150,
                     width: double.infinity,
                     child: Card(
                       elevation: 3,
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         crossAxisAlignment: CrossAxisAlignment.center,
                         children: [
                           Icon(Icons.people_alt,color: Colors.indigo,),
                           Container(
                             child: Column(
                               children: [
                                 Text("Team",style: TextStyle(),),
                                 SizedBox(height: 10,),
                                 Center(child: Text("Configure Team Members,Processes and Designations",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w200,),textAlign: TextAlign.center))

                               ],
                             ),
                           ),
                         ],
                       ),
                     ),
                   ),
                 ),
                 Expanded(
                   flex: 5,
                   child: Container(
                     margin: EdgeInsets.only(left: 5,right: 10,top: 10,bottom: 10),
                     height: 150,
                     width: double.infinity,
                     child: Card(
                       elevation: 3,
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         crossAxisAlignment: CrossAxisAlignment.center,
                         children: [
                           Icon(Icons.vpn_key,color: Colors.red,),
                           Container(
                             child: Column(
                               children: [
                                 Text("Licenses",style: TextStyle(),),
                                 SizedBox(height: 10,),
                                 Center(child: Text("Check available licenses with their expiry dates",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w200),textAlign: TextAlign.center))

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
             Row(
               children: [
                 Expanded(
                   flex: 5,
                   child: Container(
                     margin: EdgeInsets.only(top: 10,bottom: 10,left: 10,right: 5),
                     height: 150,
                     width: double.infinity,
                     child: Card(
                       elevation: 3,
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         crossAxisAlignment: CrossAxisAlignment.center,
                         children: [
                           Icon(Icons.connected_tv,color: Colors.amberAccent,),
                           Container(
                             child: Column(
                               children: [
                                 Text("CRM Fields",style: TextStyle(),),
                                 SizedBox(height: 10,),
                                 Center(child: Text("Configure your custom fields to be shown in the crmform",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w200,),textAlign: TextAlign.center))

                               ],
                             ),
                           ),
                         ],
                       ),
                     ),
                   ),
                 ),
                 Expanded(
                   flex: 5,
                   child: Container(
                     margin: EdgeInsets.only(left: 5,right: 10,top: 10,bottom: 10),
                     height: 150,
                     width: double.infinity,
                     child: Card(
                       elevation: 3,
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         crossAxisAlignment: CrossAxisAlignment.center,
                         children: [
                           Icon(Icons.business,color: Colors.green,),
                           Container(
                             child: Column(
                               children: [
                                 Text("Company",style: TextStyle(),),
                                 SizedBox(height: 10,),
                                 Center(child: Text("Configure your company details",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w200),textAlign: TextAlign.center))

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
             Row(
               children: [
                 Expanded(
                   flex: 5,
                   child: Container(
                     margin: EdgeInsets.only(top: 10,bottom: 10,left: 10,right: 5),
                     height: 150,
                     width: double.infinity,
                     child: Card(
                       elevation: 3,
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         crossAxisAlignment: CrossAxisAlignment.center,
                         children: [
                           Icon(Icons.mail,color: Colors.blue,),
                           Container(
                             child: Column(
                               children: [
                                 Text("Email Templates",style: TextStyle(),),
                                 SizedBox(height: 10,),
                                 Center(child: Text("Configure your own custom email templates, for quickly mailing your customers",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w200,),textAlign: TextAlign.center))

                               ],
                             ),
                           ),
                         ],
                       ),
                     ),
                   ),
                 ),
                 Expanded(
                   flex: 5,
                   child: Container(
                     margin: EdgeInsets.only(left: 5,right: 10,top: 10,bottom: 10),
                     height: 150,
                     width: double.infinity,
                     child: Card(
                       elevation: 3,
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         crossAxisAlignment: CrossAxisAlignment.center,
                         children: [
                           Icon(Icons.voice_chat,color: Colors.lightGreen,),
                           Container(
                             child: Column(
                               children: [
                                 Text("Whatsapp Templates",style: TextStyle(),),
                                 SizedBox(height: 10,),
                                 Center(child: Text("Configure your own customer whatsapp templates,for quickly",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w200),textAlign: TextAlign.center))

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
             Row(
               children: [
                 Expanded(
                   flex: 5,
                   child: Container(
                     margin: EdgeInsets.only(top: 10,bottom: 10,left: 10,right: 5),
                     height: 150,
                     width: double.infinity,
                     child: Card(
                       elevation: 3,
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         crossAxisAlignment: CrossAxisAlignment.center,
                         children: [
                           Icon(Icons.message,color: Colors.orangeAccent,),
                           Container(
                             child: Column(
                               children: [
                                 Text("SMS Templates",style: TextStyle(),),
                                 SizedBox(height: 10,),
                                 Center(child: Text("Configure your own custom SMS templates,for quickly messaging your customers",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w200,),textAlign: TextAlign.center))

                               ],
                             ),
                           ),
                         ],
                       ),
                     ),
                   ),
                 ),
                 Expanded(
                   flex: 5,
                   child: Container(
                     margin: EdgeInsets.only(left: 5,right: 10,top: 10,bottom: 10),
                     height: 150,
                     width: double.infinity,
                     child: Card(
                       elevation: 3,
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         crossAxisAlignment: CrossAxisAlignment.center,
                         children: [
                           Icon(Icons.call,color: Colors.red,),
                           Container(
                             child: Column(
                               children: [
                                 Text("Auto-dial Configuration",style: TextStyle(),),
                                 SizedBox(height: 10,),
                                 Center(child: Text("Configure auto-dial for all or selected users",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w200),textAlign: TextAlign.center))

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
             Row(
               children: [
                 Expanded(
                   flex: 5,
                   child: Container(
                     margin: EdgeInsets.only(top: 10,bottom: 10,left: 10,right: 5),
                     height: 150,
                     width: double.infinity,
                     child: Card(
                       elevation: 3,
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         crossAxisAlignment: CrossAxisAlignment.center,
                         children: [
                           Icon(Icons.swap_horiz,color: Colors.orangeAccent,),
                           Container(
                             child: Column(
                               children: [
                                 Text("Transfer",style: TextStyle(),),
                                 SizedBox(height: 10,),
                                 Center(child: Text("Transfer allocation",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w200,),textAlign: TextAlign.center))

                               ],
                             ),
                           ),
                         ],
                       ),
                     ),
                   ),
                 ),
                 Expanded(
                   flex: 5,
                   child: Container(
                     margin: EdgeInsets.only(left: 5,right: 10,top: 10,bottom: 10),
                     height: 150,
                     width: double.infinity,
                     child: Card(
                       elevation: 3,
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         crossAxisAlignment: CrossAxisAlignment.center,
                         children: [
                           Icon(Icons.people_alt,color: Colors.indigo,),
                           Container(
                             child: Column(
                               children: [
                                 Text("Team",style: TextStyle(),),
                                 SizedBox(height: 10,),
                                 Center(child: Text("Configure Team Members,Processes and Designations",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w200),textAlign: TextAlign.center))

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

           ],
         ),
       ),

     );
   }
 }
import 'package:agcaller/constants/const_colors.dart';
import 'package:flutter/material.dart';
class AllocationScreen extends StatefulWidget
{
  const AllocationScreen({Key? key}):super(key: key);
  @override
  _AllocationScreenState createState()=>_AllocationScreenState();

}
class _AllocationScreenState extends State<AllocationScreen>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
     appBar: AppBar(
       backgroundColor: logoColors,
       title:Text("Allocation"),
       actions: [
         Icon(Icons.search,color: whiteColors),
         SizedBox(width: 10,),
         Icon(Icons.call,color: whiteColors,),
         SizedBox(width: 10,),
         Icon(Icons.menu_open,color: whiteColors,),
         SizedBox(width: 10,),
       ],
     ),
    );
  }


}
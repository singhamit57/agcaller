import 'package:agcaller/constants/const_colors.dart';
import 'package:flutter/material.dart';
class CustomerScreen extends StatefulWidget
{
  const CustomerScreen({Key? key}):super(key: key);
  @override
  _CustomerScreenState createState()=>_CustomerScreenState();
}
class _CustomerScreenState extends State<CustomerScreen>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
     appBar: AppBar(
       backgroundColor: logoColors,
       title: Text(
         "Customers",style: TextStyle(color: whiteColors),
       ),
       actions: [
         Icon(Icons.search,color: whiteColors,),
         SizedBox(width: 10,),
         Icon(Icons.menu_open,color: whiteColors,),
         SizedBox(width: 10,)
       ],
     ),
      body: Text('CustomerScreen'),
    );
  }
}

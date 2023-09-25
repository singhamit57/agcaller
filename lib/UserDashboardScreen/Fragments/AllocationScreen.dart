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
         GestureDetector(
           onTap: (){


             showDialog(
               context: context,
               builder: (BuildContext context) {
                 return Expanded(
                   child: AlertDialog(
                     title: Text('Auto-dialer alert'),
                     content: Text('Auto dialer will initiate calls directly from your registered sim. You can pause the auto dialer any time in the next screen.\nDial from?'),
                     actions: [
                       Column(
                         mainAxisAlignment: MainAxisAlignment.end,
                         crossAxisAlignment: CrossAxisAlignment.end,
                         children: [
                           OutlinedButton(
                             //  textColor: Colors.black,
                             onPressed: () {},
                             child: Text('My Allocation',style: TextStyle(color: logoColors),),
                           ),
                           SizedBox(height: 10,),
                           OutlinedButton(
                             //  textColor: Colors.black,
                             onPressed: () {},
                             child: Text('Common Allocation',style: TextStyle(color: logoColors),),
                           ),
                           SizedBox(height: 10,),
                           Text("Cancel",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w200),),
                         ],
                       ),

                     ],
                   ),
                 );
               },
             );

           },
             child: Icon(Icons.call,color: whiteColors,)),
         SizedBox(width: 10,),
         GestureDetector(
           onTap: (){
             showModalBottomSheet(context: context,builder: (context)=>buildSheet());
           },
             child: Icon(Icons.menu_open,color: whiteColors,)),
         SizedBox(width: 10,),
       ],
     ),
    );
  }

  buildSheet()=>Column(
    children: [
      Padding(
        padding: EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Filters",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
            Text("Done",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: logoColors),),
          ],
        ),
      ),
      SizedBox(height: 5,),
      Container(
        alignment: Alignment.topLeft,
        margin: EdgeInsets.only(left: 15),
        child: Text("Short by",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w200),),
      ),
      SizedBox(height: 75,),
      Container(
        alignment: Alignment.topLeft,
        margin: EdgeInsets.only(left: 15),
        child: Text("Filter by Status",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w200),),
      ),

    ],
  );


}
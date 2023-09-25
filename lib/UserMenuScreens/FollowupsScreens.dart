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
          GestureDetector(
            onTap: (){
              setState(() {
                showModalBottomSheet(context: context, builder: (context)=>buildSheet(),);
              });
            },
              child: Icon(Icons.menu_open,color: whiteColors)),
          SizedBox(width: 15,)
        ],
        backgroundColor: logoColors,
        title: Text(
          'Follow-ups',style: TextStyle(color: whiteColors),
        ),
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
          child: Text("Sort by",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w200),),
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
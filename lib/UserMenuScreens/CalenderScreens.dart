import 'package:agcaller/constants/const_colors.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalenderScreens extends StatefulWidget
{
  const CalenderScreens({Key? key}) : super(key: key);
  _CalenderScreensState createState()=> _CalenderScreensState();
}
class _CalenderScreensState extends State<CalenderScreens>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        actions: [
          GestureDetector(
            onTap: (){
              setState(() {
                showModalBottomSheet(context: context,builder: (context)=>buildSheet());
              });
            },
              child: Icon(Icons.menu_open,color: whiteColors,)),
          SizedBox(width: 10,)
        ],
        backgroundColor: logoColors,
        title: Text("Your Calender"),
      ),
      body: TableCalendar(
        firstDay: DateTime.utc(2010, 10, 16),
        lastDay: DateTime.utc(2030, 3, 14),
        focusedDay: DateTime.now(),
        calendarStyle: CalendarStyle(rangeHighlightColor: Colors.red),
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

      SizedBox(height: 75,),
      Container(
        alignment: Alignment.topLeft,
        margin: EdgeInsets.only(left: 15),
        child: Text("Filter by Status",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w200),),
      ),

    ],
  );



}
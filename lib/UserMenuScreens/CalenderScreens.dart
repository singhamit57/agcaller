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
}
import 'package:agcaller/constants/const_colors.dart';
import 'package:bottom_picker/bottom_picker.dart';
import 'package:flutter/material.dart';

class RechurnHistoryScreen extends StatefulWidget
{
  const RechurnHistoryScreen({Key? key}):super(key: key);
  _RechurnHistoryScreenState createState()=>_RechurnHistoryScreenState();
}
class _RechurnHistoryScreenState extends State<RechurnHistoryScreen>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: logoColors,
        title: Text(
          "Rechurn History",
          style: TextStyle(color: whiteColors),
            ),
      ),
      body: Column(
        children: [

          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Container(
                    width: 100,
                    height: 80,
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          BottomPicker.date(
                            title:  "Set your Birthday",
                            titleStyle:  TextStyle(
                                fontWeight:  FontWeight.bold,
                                fontSize:  15,
                                color:  Colors.blue
                            ),
                            onChange: (index) {
                              print(index);
                            },
                            onSubmit: (index) {
                              print(index);
                            },
                            // bottomPickerTheme:  BOTTOM_PICKER_THEME.plumPlate
                          ).show(context);




                        });
                      },
                      child: Card(
                        color: backgroundsColors,
                        elevation: 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              flex: 3,
                              child: Container(
                                  alignment: Alignment.center,
                                  child: Text("START DATE",style: TextStyle(fontSize: 8,fontWeight: FontWeight.w200),)),
                            ),
                            Expanded(
                              flex: 7,
                              child: Container(
                                width: double.infinity,
                                color: whiteColors,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.calendar_month_rounded,size: 12,),
                                    Text('1 Jan 2023',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w800),),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    width: 100,
                    height: 80,
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          BottomPicker.date(
                            title:  "Set your Birthday",
                            titleStyle:  TextStyle(
                                fontWeight:  FontWeight.bold,
                                fontSize:  15,
                                color:  Colors.blue
                            ),
                            onChange: (index) {
                              print(index);
                            },
                            onSubmit: (index) {
                              print(index);
                            },
                            // bottomPickerTheme:  BOTTOM_PICKER_THEME.plumPlate
                          ).show(context);




                        });
                      },
                      child: Card(
                        color: backgroundsColors,
                        elevation: 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              flex: 3,
                              child: Container(
                                  alignment: Alignment.center,
                                  child: Text("START DATE",style: TextStyle(fontSize: 8,fontWeight: FontWeight.w200),)),
                            ),
                            Expanded(
                              flex: 7,
                              child: Container(
                                width: double.infinity,
                                color: whiteColors,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.calendar_month_rounded,size: 12,),
                                    Text('1 Jan 2023',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w800),),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),


        ],
      ),
    );

  }
}

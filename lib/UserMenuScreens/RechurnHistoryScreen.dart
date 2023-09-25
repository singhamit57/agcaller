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

          Container(
            width: double.infinity,
            margin: EdgeInsets.only(bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [

                Expanded(
                  flex:5,
                  child: Container(
                    width: 100,
                    height: 80,
                    child: GestureDetector(
                      onTap: (){
                        print("card clicked");
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
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 3,
                              child: Container(
                                width: double.infinity,
                                alignment: Alignment.center,
                                color: backgroundsColors,
                                child: Padding(
                                    padding: EdgeInsets.all(0),
                                    child: Text("START DATE",style: TextStyle(fontSize: 8,fontWeight: FontWeight.w300),)),
                              ),
                            ),

                            Expanded(
                              flex: 7,
                              child: Container(
                                color: whiteColors,
                                width: double.infinity,
                                child: Row(

                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.calendar_month,size: 12,),
                                    Text('22 Sep 2023',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500),),
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
                    width:100,
                    height: 80,
                    child: GestureDetector(
                      onTap: (){

                        print("card clicked");
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
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 3,
                              child: Container(
                                width: double.infinity,
                                alignment: Alignment.center,
                                color: backgroundsColors,
                                child: Padding(
                                    padding: EdgeInsets.all(0),
                                    child: Text("END DATE",style: TextStyle(fontSize: 8,fontWeight: FontWeight.w300),)),
                              ),
                            ),

                            Expanded(
                              flex: 7,
                              child: Container(
                                width: double.infinity,
                                color: whiteColors,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.calendar_month,size: 12,),
                                    Text('22 Sep 2023',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500),),
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

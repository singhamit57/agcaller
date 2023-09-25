import 'package:agcaller/constants/const_colors.dart';
import 'package:bottom_picker/bottom_picker.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import 'RechurnHistoryScreen.dart';

class RechurnDataScreens extends StatefulWidget
{
  const RechurnDataScreens({Key? key}) :super(key: key);
  @override
  _RechurnDataScreensState createState()=> _RechurnDataScreensState();
}
class _RechurnDataScreensState extends State<RechurnDataScreens>
{
  bool isChecked = false;
  final List<String> genderItems = [];
  String? selectedValue;




  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: logoColors,
        actions: [
          GestureDetector(
            onTap: (){
              showModalBottomSheet(context: context,builder: (context)=>buildSheet());
            },
              child: Icon(Icons.menu_open,color: whiteColors,)),
          SizedBox(width: 15,),
          GestureDetector(
            onTap: (){
              setState(() {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>RechurnHistoryScreen()));
              });
            },
              child: Icon(Icons.history,color: whiteColors,)),
          SizedBox(width: 15,)
        ],
        title: Text(
          "Rechurn Customers",
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
          SizedBox(height: 10,),
          OutlinedButton(
            onPressed: (){

            },
            style: OutlinedButton.styleFrom(
              side: BorderSide(width: 1.0, color: logoColors),
            ),
            child: Text(
              "Get Count",
              style: TextStyle(color: logoColors,fontSize: 10,fontWeight: FontWeight.w200),
            ),
          ),
          SizedBox(height: 30,),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 10),
            child: Text(
              "Assign in Common pool",
              style: TextStyle(fontSize: 12,fontWeight: FontWeight.w200),
            ),

          ),

          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 10,right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Allocation if user has access to web allocation permission",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w200),),
                Checkbox(
                  checkColor: Colors.white,
                  //fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),

              ],
            ),
          ),
          SizedBox(height: 10,),
          Row(children: <Widget>[
            Expanded(
              child: new Container(
                  margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Divider(
                    color: Color(0xff8a8989),
                    height: 1,
                  )),
            ),
            Text("OR"),
            Expanded(
              child: new Container(
                  margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                  child: Divider(
                    color: Color(0xff8a8989),
                    height: 1,
                  )),
            ),
          ]),
          Container(
            margin: EdgeInsets.only(left: 10),
            alignment: Alignment.topLeft,
            child: Text(
              "Assign To specific users",
              style: TextStyle(fontSize: 12,fontWeight: FontWeight.w300),
            ),

          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: GestureDetector(
              onTap: (){
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Expanded(
                      child: AlertDialog(
                       // title: Text('Auto-dialer alert'),
                        //content: Text('Auto dialer will initiate calls directly from your registered sim. You can pause the auto dialer any time in the next screen.\nDial from?'),
                        actions: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [

                              TextFormField(
                               // initialValue: 'Input text',
                                decoration: InputDecoration(
                                  labelText: 'Search by Name',
                                //  errorText: 'Error message',
                                  border: OutlineInputBorder(),
                                  prefixIcon: Icon(Icons.search),
                                  suffixIcon: Icon(
                                    Icons.clear,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Container(
                                alignment: Alignment.center,
                                  child: Text("No data found")),

                              SizedBox(height: 200,),


                              SizedBox(height: 10,),
                              Container(
                                height: 40,
                                width: 40,
                                alignment: Alignment.center,
                                color: logoColors,
                                  child: Text("OK",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w200,color: whiteColors,backgroundColor: logoColors),)),
                            ],
                          ),

                        ],
                      ),
                    );
                  },
                );
              },
              child: DropdownButtonFormField2<String>(
                isExpanded: true,
                decoration: InputDecoration(
                  // Add Horizontal padding using menuItemStyleData.padding so it matches
                  // the menu padding when button's width is not specified.
                  contentPadding: const EdgeInsets.symmetric(vertical: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  // Add more decoration..
                ),
                hint: const Text(
                  'Assign to',
                  style: TextStyle(fontSize: 14),
                ),
                items: genderItems
                    .map((item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ))
                    .toList(),
                // validator: (value) {
                //   if (value == null) {
                //     return 'Please select gender.';
                //   }
                //   return null;
                // },
                onChanged: (value) {

                  //Do something when selected item is changed.
                },
                onSaved: (value) {
                  selectedValue = value.toString();
                },
                buttonStyleData: const ButtonStyleData(
                  padding: EdgeInsets.only(right: 8),
                ),
                iconStyleData: const IconStyleData(
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black45,
                  ),
                  iconSize: 24,
                ),
                dropdownStyleData: DropdownStyleData(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                menuItemStyleData: const MenuItemStyleData(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                ),
              ),
            ),
          ),
          SizedBox(height: 15,),
          
          
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(left: 30,right: 30),

            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                backgroundColor: logoColors
              ),
              child: Padding(
                padding: EdgeInsets.all(13),
                child: Text(
                  "Initiate*",
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 10),
              child: Text("*On click of initiate, allocations will be created for the matched customer",
              style: TextStyle(fontSize: 10,fontWeight: FontWeight.w300 ),),
          ),


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

      SizedBox(height: 75,),
      Container(
        alignment: Alignment.topLeft,
        margin: EdgeInsets.only(left: 15),
        child: Text("Filter by Status",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w200),),
      ),


    ],
  );
}
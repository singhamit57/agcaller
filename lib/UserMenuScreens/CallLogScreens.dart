import 'package:agcaller/constants/const_colors.dart';
import 'package:bottom_picker/bottom_picker.dart';
import 'package:flutter/material.dart';

class CallLogScreens extends StatefulWidget
{
  const CallLogScreens({Key? key}) :super(key: key);
  @override
  _CallLogScreensState createState()=> _CallLogScreensState();
}
class _CallLogScreensState extends State<CallLogScreens>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: backgroundsColors,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              // method to show the search bar
              showSearch(
                context: context, delegate: CustomSearchDelegate(),
                // delegate to customize the search bar
                //  delegate: null,
              );
            },
            icon: const Icon(Icons.search),
          ),
          //Icon(Icons.search,color: whiteColors,),
          SizedBox(width: 15,),
          GestureDetector(
            onTap: (){
              showModalBottomSheet(context: context,builder: (context)=>buildSheet());
            },
              child: Icon(Icons.menu_open,color: whiteColors,)),
          SizedBox(width: 15,),
        ],
        backgroundColor: logoColors,
        title: Text("Call Logs",style: TextStyle(color: whiteColors),),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
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
          Padding(
            padding: EdgeInsets.all(10),
              child: Text("Total - 46",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w200),),
          ),

          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Container(
                width: double.infinity,
                height: 1000,
                child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context,position){
                    return Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  SizedBox(height: 5,),
                                  Icon(Icons.call_made,color: Colors.blue,size: 14,),
                                  SizedBox(width: 15,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Unknow",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                                      SizedBox(height: 5,),
                                      Text("Name",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w300),),
                                      SizedBox(height: 5,),
                                      Text("At 07:46 PM,Yesterday by Rajshekar Patnayak",style: TextStyle(fontSize: 8,fontWeight: FontWeight.w200),),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            Column(
                              children: [
                                Icon(Icons.play_arrow,color: Colors.green,size: 16,),
                                SizedBox(height: 5,),
                                Text("8m 36s",style: TextStyle(fontSize: 8,fontWeight: FontWeight.w200),)
                              ],
                            ),
                          ],
                        ),
                        Divider(
                          color: Color(0xffedeaea),
                          thickness: 1,
                        ),
                      ],
                    );



                  },
                ),
              ),
            ),
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


//this is searchbar class
class CustomSearchDelegate extends SearchDelegate {
// Demo list to show querying
  List<String> searchTerms = [
    "Apple",
    "Banana",
    "Mango",
    "Pear",
    "Watermelons",
    "Blueberries",
    "Pineapples",
    "Strawberries"
  ];

// first overwrite to
// clear the search text
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.clear),
      ),
    ];
  }

// second overwrite to pop out of search menu
  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

// third overwrite to show query result
  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

// last overwrite to show the
// querying process at the runtime
  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}
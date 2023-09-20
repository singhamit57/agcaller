import 'package:agcaller/UserDashboardScreen/Fragments/AllocationScreen.dart';
import 'package:agcaller/UserDashboardScreen/Fragments/CustomerScreen.dart';
import 'package:agcaller/UserDashboardScreen/Fragments/LastSevenDayScreen.dart';
import 'package:agcaller/UserDashboardScreen/Fragments/LastThirtyDayScreen.dart';
import 'package:agcaller/UserDashboardScreen/Fragments/MenuScreen.dart';
import 'package:agcaller/UserDashboardScreen/Fragments/SelectRangeScreen.dart';
import 'package:agcaller/UserDashboardScreen/Fragments/TodayScreens.dart';
import 'package:flutter/material.dart';

import '../../constants/const_colors.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) :super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen>
{

  List<String> items = [
    "Today",
    "Last 7 Days",
    "Last 30 Days",
    "Select Range",
    // "Post",
    // "Activity",
    // "Setting",
    // "Profile",
  ];

  /// List of body icon
  final ggg = [
   TodayScreens(),
    LastSevenDayScreen(),
    LastThirtyDayScreen(),
    SelectRangeScreen(),

  ];
  int current = 0;



  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: backgroundsColors,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: logoColors,
        title: Text('agcaller'),
        actions: [
          Container(
            height: 2,
            padding: EdgeInsets.all(10),
            child: Card(
              color: logoColors,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 5,right: 5),
                      child: Text('Switch to admin',style: TextStyle(fontSize: 10,color: Colors.white),)
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 90,
              width: double.infinity,
              color: logoColors,
              child: Padding(
                padding: EdgeInsets.only(left: 20,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 0,bottom: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Company Name',textAlign: TextAlign.left,style: TextStyle(color: whiteColors,fontSize: 14,fontWeight: FontWeight.bold),),
                          Text('Amit Singh',textAlign: TextAlign.left,style: TextStyle(color: whiteColors,fontWeight: FontWeight.w500,fontSize: 12),),
                          Row(
                            children: [
                              Icon(Icons.swap_vertical_circle_outlined,color: whiteColors,size: 15,),
                              SizedBox(
                                width: 5,
                              ),
                              Text('Default process',textAlign: TextAlign.left,style: TextStyle(color: Color(
                                  0xffd9b8b8),fontSize: 12),),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [Icon(Icons.coffee,color: whiteColors,),
                        SizedBox(
                          width: 30,
                        ),
                        Icon(Icons.power_settings_new_rounded,color: Colors.white,)
                      ],
                    ),

                  ],
                ),
              ),
            ),

            Container(
               width: double.infinity,
              // height: double.infinity,
              margin: const EdgeInsets.all(10),
              child: Column(
                children: [
                  /// CUSTOM TABBAR
                  SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount: items.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (ctx, index) {
                          return Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    current = index;
                                  });
                                },
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 300),
                                  margin: const EdgeInsets.all(5),
                                  width: 100,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: current == index
                                        ? logoColors
                                        : whiteColors,
                                    borderRadius: current == index
                                        ? BorderRadius.circular(20)
                                        : BorderRadius.circular(25),
                                    border: current == index
                                        ? Border.all(
                                        color: logoColors, width: 2)
                                        : null,
                                  ),
                                  child: Center(
                                    child: Text(
                                      items[index],style: TextStyle(color: Colors.black,fontSize: 12),

                                    ),
                                  ),
                                ),
                              ),
                              Visibility(
                                  visible: current == index,
                                  child: Container(
                                    width: 5,
                                    height: 5,

                                  ))
                            ],
                          );
                        }),
                  ),
                  Container(
                    height: 500,
                    width: 500,
                    child: ggg[current],
                  ),

                  /// MAIN BODY
                  // Container(
                  //   margin: const EdgeInsets.only(top: 30),
                  //   width: double.infinity,
                  //   height: 550,
                  //   child: Column(
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     children: [
                  //       Icon(
                  //         icons[current],
                  //         size: 200,
                  //         color: Colors.deepPurple,
                  //       ),
                  //       const SizedBox(
                  //         height: 10,
                  //       ),
                  //       Text(
                  //         items[current],
                  //         // style: GoogleFonts.laila(
                  //         //     fontWeight: FontWeight.w500,
                  //         //     fontSize: 30,
                  //         //     color: Colors.deepPurple),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ),


          ],
        ),
      ),

    );
  }
}
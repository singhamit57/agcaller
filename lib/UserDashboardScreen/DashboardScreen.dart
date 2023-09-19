import 'package:agcaller/UserDashboardScreen/Fragments/AllocationScreen.dart';
import 'package:agcaller/UserDashboardScreen/Fragments/CustomerScreen.dart';
import 'package:agcaller/UserDashboardScreen/Fragments/HomeScreen.dart';
import 'package:agcaller/UserDashboardScreen/Fragments/MenuScreen.dart';
import 'package:agcaller/constants/const_colors.dart';
import 'package:flutter/material.dart';
class DashboardScreen extends StatefulWidget
{
  const DashboardScreen({Key? key}) :super(key: key);
  @override
  _DashboardScreenState createState()=> _DashboardScreenState();

}
class _DashboardScreenState extends State<DashboardScreen>
{

  int pageIndex =0;
  final pages =[
    HomeScreen(),
    AllocationScreen(),
    CustomerScreen(),
    MenuScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      pageIndex = index;
    });
  }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: pages[pageIndex],

        bottomNavigationBar: BottomAppBar(
          notchMargin: 5.0,
          shape: CircularNotchedRectangle(),
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.all(0),
                child: IconButton(
                    enableFeedback: false,
                    onPressed: () {
                      setState(() {
                        pageIndex = 0;
                      });
                    },
                    icon: pageIndex == 0
                        ?
                    Icon(Icons.home_filled, color: Colors.red, size: 25,)
                        : Icon(
                      Icons.home_outlined, color: Colors.red, size: 25,)


                ),

              ),
              Padding(
                padding: EdgeInsets.all(0),
                child: IconButton(
                    enableFeedback: false,
                    onPressed: () {
                      setState(() {
                        pageIndex = 1;
                      });
                    },
                    icon: pageIndex == 1
                        ? Icon(
                      Icons.vertical_split_rounded, color: Colors.red, size: 25,)
                        : Icon(Icons.vertical_split_outlined,
                      color: Colors.red, size: 25,)
                ),
              ),
              Padding(
                padding: EdgeInsets.all(0),
                child: IconButton(
                    enableFeedback: false,
                    onPressed: () {
                      setState(() {
                        pageIndex = 2;
                      });
                    },
                    icon: pageIndex == 2
                        ? Icon(
                      Icons.people_alt, color: Colors.red, size: 25,)
                        : Icon(Icons.people_alt_outlined,
                      color: Colors.red, size: 25,)
                ),
              ),
              Padding(
                padding: EdgeInsets.all(0),
                child: IconButton(
                  enableFeedback: false,
                  onPressed: () {
                    setState(() {
                      pageIndex = 3;
                    });
                  },
                  icon: pageIndex == 3 ? Icon(
                    Icons.menu, color: Colors.red, size: 25,) : Icon(
                    Icons.menu_outlined,
                    color: Colors.red,
                    size: 25,
                  ),
                ),
              ),
            ],

          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.call),
          backgroundColor: logoColors,
          foregroundColor: whiteColors,
        ),
      );
    }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //         title: const Text('Flutter BottomNavigationBar Example'),
  //         backgroundColor: Colors.green
  //     ),
  //     body: Center(
  //       child: pages.elementAt(pageIndex),
  //     ),
  //     bottomNavigationBar: BottomNavigationBar(
  //
  //       backgroundColor: Colors.white,
  //         items: const <BottomNavigationBarItem>[
  //           BottomNavigationBarItem(
  //               icon: Icon(Icons.home,color: Colors.black,),
  //               label: 'Home',
  //              // backgroundColor: Colors.green
  //           ),
  //           BottomNavigationBarItem(
  //               icon: Icon(Icons.search),
  //               label: 'profile',
  //              // backgroundColor: Colors.yellow
  //           ),
  //           BottomNavigationBarItem(
  //             icon: Icon(Icons.person),
  //             label: 'customer',
  //           //  backgroundColor: Colors.blue,
  //           ),
  //         ],
  //         type: BottomNavigationBarType.shifting,
  //         currentIndex: pageIndex,
  //         selectedItemColor: Colors.black,
  //         iconSize: 40,
  //         onTap: _onItemTapped,
  //         elevation: 5
  //     ),
  //
  //         floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
  //         floatingActionButton: FloatingActionButton(
  //           onPressed: () {},
  //           child: Icon(Icons.add),
  //           backgroundColor: Colors.black,
  //           foregroundColor: Colors.yellow,
  //         ),
  //
  //
  //   );
  // }



}
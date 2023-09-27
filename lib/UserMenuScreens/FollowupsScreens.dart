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

          IconButton(
            onPressed: () {
              // method to show the search bar
              showSearch(
                context: context, delegate: CustomSearchDelegate(),
                // delegate to customize the search bar
                //  delegate: null,
              );
            },
            icon: const Icon(Icons.search,color: whiteColors,),
          ),
         // Icon(Icons.search,color: whiteColors,),
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

//this is search bar class
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
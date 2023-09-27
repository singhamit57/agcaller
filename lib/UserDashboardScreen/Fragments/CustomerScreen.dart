import 'package:agcaller/constants/const_colors.dart';
import 'package:flutter/material.dart';
class CustomerScreen extends StatefulWidget
{
  const CustomerScreen({Key? key}):super(key: key);
  @override
  _CustomerScreenState createState()=>_CustomerScreenState();
}
class _CustomerScreenState extends State<CustomerScreen>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
     appBar: AppBar(
       backgroundColor: logoColors,
       title: Text(
         "Customers",style: TextStyle(color: whiteColors),
       ),
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
         SizedBox(width: 10,),
         Icon(Icons.menu_open,color: whiteColors,),
         SizedBox(width: 10,)
       ],
     ),
      body: Text('CustomerScreen'),
    );
  }
}


//This is search bar class
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

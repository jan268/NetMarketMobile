import 'package:flutter/material.dart';
import 'package:net_market/mocks/mocked_lists.dart';
import 'package:net_market/pages/filters.dart';
import 'package:net_market/pages/item_in_list_column.dart';

import 'home.dart';

class SearchPage extends StatefulWidget {
  final String category;
  const SearchPage({Key? key, required this.category}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  get bottomNavBar => MockedLists().bottomNavBar;
  get categories => MockedLists().categories;

  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: bottomNavBar,
      body: Container(
        child: SafeArea(
          child: Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
              SizedBox(
              height: 50,
              child: Container(
                color: Colors.grey[100],
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (BuildContext context, int index) {
                    return TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Home(category: categories[index],)));
                      },
                      child: Text(
                        categories[index],
                        style: TextStyle(color: Colors.black),
                      ),
                    );
                  },
                ),
              ),
              ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 50,
                      child: TextField(
                        controller: myController,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => FilterPage()));
                      },
                      icon: Icon(
                          Icons.settings
                      ),
                    )
                  ],
                ),
                Divider(color: Colors.black,),
                SizedBox(
                  height: 489,
                  child: Container(
                      color: Colors.white,
                      child: ItemInListColumn(category: widget.category,)
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

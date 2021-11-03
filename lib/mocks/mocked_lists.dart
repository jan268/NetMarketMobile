import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:net_market/utilities/basic_icons_icons.dart';

class MockedLists {
  List<Widget> categories = <Widget>[
    TextButton(
      onPressed: () {},
      child: Text(
        'SNEAKERS',
        style: TextStyle(color: Colors.black),
      ),
    ),
    TextButton(
      onPressed: () {},
      child: Text(
        'STREETWEAR',
        style: TextStyle(color: Colors.black),
      ),
    ),
    TextButton(
      onPressed: () {},
      child: Text(
        'COLLECTIBLES',
        style: TextStyle(color: Colors.black),
      ),
    ),
    TextButton(
      onPressed: () {},
      child: Text(
        'WATCHES',
        style: TextStyle(color: Colors.black),
      ),
    ),
    TextButton(
      onPressed: () {},
      child: Text(
        'ELECTRONICS',
        style: TextStyle(color: Colors.black),
      ),
    ),
  ];

  List<Widget> brands = <Widget>[
    SizedBox(
      width: 120,
      child: TextButton(
        onPressed: () {},
        child: Text(
          'SUPREME',
          style: TextStyle(color: Colors.black),
        ),
      ),
    ),
    SizedBox(
      width: 120,
      child: TextButton(
        onPressed: () {},
        child: Text(
          'FEAR OF GOD',
          style: TextStyle(color: Colors.black),
        ),
      ),
    ),
    SizedBox(
      width: 120,
      child: TextButton(
        onPressed: () {},
        child: Text(
          'BAPE',
          style: TextStyle(color: Colors.black),
        ),
      ),
    ),
    SizedBox(
      width: 120,
      child: TextButton(
        onPressed: () {},
        child: Text(
          'OFF-WHITE',
          style: TextStyle(color: Colors.black),
        ),
      ),
    ),
    SizedBox(
      width: 120,
      child: TextButton(
        onPressed: () {},
        child: Text(
          'YOHJI YAMAMOTO',
          style: TextStyle(color: Colors.black),
        ),
      ),
    ),
  ];

  final bottomNavBar = BottomNavigationBar(
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
          icon: Icon(
            BasicIcons.trending_up,
            color: Colors.tealAccent,
          ),
          label: 'Trending'),
      BottomNavigationBarItem(
          icon: Icon(
            BasicIcons.search,
            color: Colors.tealAccent,
          ),
          label: 'Search'),
      BottomNavigationBarItem(
          icon: Icon(
            BasicIcons.person_outline,
            color: Colors.tealAccent,
          ),
          label: 'Profile'),
    ],
  );

  List<Widget> items = <Widget>[
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: FlatButton(
        padding: EdgeInsets.zero,
        onPressed: () {print("clicked obj1");},
        child: Container(
          color: Colors.grey[100],
          child: SizedBox(
            width: 140,
            child: Column(
              children: [
                Image.asset("assets/photos/j1.jpg"),
                Text(
                  'Jordan 1',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Lowest Ask',
                  style: TextStyle(fontSize: 12, color: Colors.black38),
                ),
                Text(
                  '268 USD',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Last Sale : 289 USD',
                  style: TextStyle(fontSize: 10, color: Colors.black38),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: FlatButton(
        padding: EdgeInsets.zero,
        onPressed: () {},
        child: Container(
          color: Colors.grey[100],
          child: SizedBox(
            width: 140,
            child: Column(
              children: [
                Image.asset("assets/photos/j1.jpg"),
                Text(
                  'Jordan 1',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Lowest Ask',
                  style: TextStyle(fontSize: 12, color: Colors.black38),
                ),
                Text(
                  '268 USD',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Last Sale : 289 USD',
                  style: TextStyle(fontSize: 10, color: Colors.black38),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: FlatButton(
        padding: EdgeInsets.zero,
        onPressed: () {},
        child: Container(
          color: Colors.grey[100],
          child: SizedBox(
            width: 140,
            child: Column(
              children: [
                Image.asset("assets/photos/j1.jpg"),
                Text(
                  'Jordan 1',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Lowest Ask',
                  style: TextStyle(fontSize: 12, color: Colors.black38),
                ),
                Text(
                  '268 USD',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Last Sale : 289 USD',
                  style: TextStyle(fontSize: 10, color: Colors.black38),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  ];
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:net_market/objects/item_object.dart';

class ItemInList extends StatefulWidget {
  const ItemInList({Key? key}) : super(key: key);

  @override
  _ItemInListState createState() => _ItemInListState();
}

class _ItemInListState extends State<ItemInList> {

  var items;

  void getData() async {
    var itemsFromCategory = await ItemObject.getItemsFromCategory("f3f899b0-6571-4f75-9207-f61190e17794");
    setState(() {
      items = itemsFromCategory;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FlatButton(
        padding: EdgeInsets.zero,
        onPressed: () {print("clicked $widget.item.name");},
        child: Container(
          color: Colors.grey[100],
          child: SizedBox(
            width: 140,
            child: Column(
              children: [
                Image.network(widget.item.thumbUrl),
                // Image.asset("assets/photos/j1.jpg"),
                Text(
                  widget.item.name,
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
  }

  @override
  void initState() {
    super.initState();
    getData();
  }
}
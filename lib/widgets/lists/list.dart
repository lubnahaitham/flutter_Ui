

import 'package:advance/new_ui/widgets/lists/list_tile.dart';
import 'package:flutter/material.dart';

class ListsView extends StatefulWidget {
  const ListsView({Key? key}) : super(key: key);

  @override
  _ListsViewState createState() => _ListsViewState();
}

class _ListsViewState extends State<ListsView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold( body: Column(
        children: [
          Row(children: const [
            Padding(
              padding: EdgeInsets.all(12),
              child: Text('List Title',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
          ]),
          Container(
            height: 650,
            child: Tile(),
          ),


          // Avatar(),
        ],
      ),
      ),
    );
  }
}

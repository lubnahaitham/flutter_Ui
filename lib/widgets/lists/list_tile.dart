import 'package:flutter/material.dart';
import 'list_element.dart';

class Tile extends StatefulWidget {
  const Tile({Key? key}) : super(key: key);

  @override
  _TileState createState() => _TileState();
}

class _TileState extends State<Tile> {
  final TextEditingController _title = TextEditingController();
  final TextEditingController _subtitle = TextEditingController();
  final TextEditingController _leading = TextEditingController();
  final TextEditingController _trailing = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      ListElement(
        columnData: const {
          "title": "LOREM LOREM",
          "name": "Jose Portilla",
          "email": "Jose_Portilla@test.com",
          "date": "12/13/123"
        },
        image: 'assets/hd_dp.jpg',
        onChange: () {},
        onTap: () {},
      ),
      const Divider(
        height: 10,
        indent: 80,
        thickness: 2,
      ),
      ListElement(
        columnData: const {
          "title": "LOREM LOREM",
          "name": "Jose Portilla",
          "email": "Jose_Portilla@test.com",
        },
        image: 'assets/hd_dp.jpg',
        onChange: () {},
        onTap: () {},
      ),
      const Divider(
        height: 10,
        indent: 80,
        thickness: 2,
      ),
      ListElement(
        columnData: const {
          "name": "Jose Portilla",
          "email": "Jose_Portilla@test.com",
        },
        image: 'assets/hd_dp.jpg',
        onChange: () {},
        onTap: () {},
      ),
      const Divider(
        height: 10,
        indent: 80,
        thickness: 2,
      ),
      ListElement(
        columnData: const {
          "name": "Jose Portilla",
        },
        image: 'assets/hd_dp.jpg',
        onChange: () {},
        onTap: () {},
      ),
      const Divider(
        height: 10,
        indent: 80,
        thickness: 2,
      ),
    ]);
  }
}

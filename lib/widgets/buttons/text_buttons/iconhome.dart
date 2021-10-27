import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconHome extends StatelessWidget {
  const IconHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(children: [
        IconButton(
          icon: Icon(
            Icons.home,
          ),
          iconSize: 20,
          color: Colors.grey,
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(
            Icons.home,
          ),
          iconSize: 30,
          color: Colors.grey,
          onPressed: () {},
        ),
      ]),
    ]);
  }
}

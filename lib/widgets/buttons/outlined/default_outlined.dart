import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class DefaultOutlined extends StatefulWidget {
  const DefaultOutlined({Key? key}) : super(key: key);

  @override
  _DefaultOutlinedState createState() => _DefaultOutlinedState();
}

class _DefaultOutlinedState extends State<DefaultOutlined> {
  @override
  Widget build(BuildContext context) {
    return
        Padding(
      padding: const EdgeInsets.all(10),
      child: Column(children: [
        Row(children: [
          OutlinedButton(
            child: Text(
              'default',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal
              ),
            ),
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: Colors.black, width: 1),
            ),
            onPressed: () {},
          ),
          ]),
    ]),

    );
  }
}

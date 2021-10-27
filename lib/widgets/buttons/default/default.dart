import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Default extends StatefulWidget {
  const Default({Key? key}) : super(key: key);

  @override
  _DefaultState createState() => _DefaultState();
}

class _DefaultState extends State<Default> {
  bool _button = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(children: [
        Row(children: [
          ElevatedButton(
            onPressed: () => setState(() => _button = !_button),
            child: const Text(
              'default ',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.normal),
            ),
            style: ElevatedButton.styleFrom(
              primary: _button ? TRANSPARENT_COLOR : Colors.grey[400],
            ),
          ),
        ]),
      ]),
    );
  }
}

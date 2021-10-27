import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class DefaultRounded extends StatefulWidget {
  const DefaultRounded({Key? key}) : super(key: key);

  @override
  _DefaultRoundedState createState() => _DefaultRoundedState();
}

class _DefaultRoundedState extends State<DefaultRounded> {
  bool _button = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
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
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50))),
          ),
        ]),
      ]),
    );
  }
}

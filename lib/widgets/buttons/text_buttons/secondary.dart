import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class SecondaryText extends StatefulWidget {
  const SecondaryText({Key? key}) : super(key: key);

  @override
  _SecondaryTextState createState() => _SecondaryTextState();
}

class _SecondaryTextState extends State<SecondaryText> {
  bool _link4 = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(children: [
        Row(children: [
          TextButton(
            child: Text('Secondary',
                style: TextStyle(
                    color: SECONDARY_COLOR, fontWeight: FontWeight.normal)),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    _link4 ? SOFT_SECONDARY : Colors.white)),
            onPressed: () => setState(() => _link4 = !_link4),
          ),
        ]),
      ]),
    );
  }
}

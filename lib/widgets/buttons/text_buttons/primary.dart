import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class PrimaryText extends StatefulWidget {
  const PrimaryText({Key? key}) : super(key: key);

  @override
  _PrimaryTextState createState() => _PrimaryTextState();
}

class _PrimaryTextState extends State<PrimaryText> {
  bool _link2 = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(children: [
        Row(children: [
          TextButton(
            child: Text('Primary',
                style: TextStyle(
                    color: PRIMARY_COLOR, fontWeight: FontWeight.normal)),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    _link2 ? SOFT_PRIMARY : Colors.white)),
            onPressed: () => setState(() => _link2 = !_link2),
          ),
        ]),
      ]),
    );
  }
}

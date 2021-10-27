import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class AccentText extends StatefulWidget {
  const AccentText({Key? key}) : super(key: key);

  @override
  _AccentTextState createState() => _AccentTextState();
}

class _AccentTextState extends State<AccentText> {
  bool _link3 = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(children: [
        Row(children: [
          TextButton(
            child: Text('Accent',
                style: TextStyle(
                    color: ACCENT_COLOR, fontWeight: FontWeight.normal)),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    _link3 ? SOFT_ACCENT : Colors.white)),
            onPressed: () => setState(() => _link3 = !_link3),
          ),
        ]),
      ]),
    );
  }
}

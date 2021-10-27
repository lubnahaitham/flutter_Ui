import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class WarningText extends StatefulWidget {
  const WarningText({Key? key}) : super(key: key);

  @override
  _WarningTextState createState() => _WarningTextState();
}

class _WarningTextState extends State<WarningText> {
  bool _link7 = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(children: [
        Row(children: [
          TextButton(
            child: Text('Warning',
                style: TextStyle(
                    color: WARNING_COLOR, fontWeight: FontWeight.normal)),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    _link7 ? SOFT_WARNING : Colors.white)),
            onPressed: () => setState(() => _link7 = !_link7),
          ),
        ]),
      ]),
    );
  }
}

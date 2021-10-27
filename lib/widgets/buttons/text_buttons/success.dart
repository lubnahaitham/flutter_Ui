import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class SuccessText extends StatefulWidget {
  const SuccessText({Key? key}) : super(key: key);

  @override
  _SuccessTextState createState() => _SuccessTextState();
}

class _SuccessTextState extends State<SuccessText> {
  bool _link5 = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(children: [
        Row(children: [
          TextButton(
            child: Text('Success',
                style: TextStyle(
                    color: SUCCESS_COLOR, fontWeight: FontWeight.normal)),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    _link5 ? SOFT_SUCCESS : Colors.white)),
            onPressed: () => setState(() => _link5 = !_link5),
          ),
        ]),
      ]),
    );
  }
}

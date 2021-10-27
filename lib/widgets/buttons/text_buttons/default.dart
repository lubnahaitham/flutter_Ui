import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class DefaultText extends StatefulWidget {
  const DefaultText({Key? key}) : super(key: key);

  @override
  _DefaultTextState createState() => _DefaultTextState();
}

class _DefaultTextState extends State<DefaultText> {
  bool _link1 = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(children: [
        Row(children: [
          TextButton(
            child: Text('default',
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.normal)),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    _link1 ? SOFT_DEFAULT : Colors.white)),
            onPressed: () => setState(() => _link1 = !_link1),
          ),
        ]),
      ]),
    );
  }
}

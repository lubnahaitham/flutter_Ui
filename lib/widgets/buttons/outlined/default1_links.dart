import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class DefaultLinks1 extends StatefulWidget {
  const DefaultLinks1({Key? key}) : super(key: key);

  @override
  _DefaultLinks1State createState() => _DefaultLinks1State();
}

class _DefaultLinks1State extends State<DefaultLinks1> {
  bool _link = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(children: [
        Row(children: [
          OutlinedButton(
            child: Text(
              'default',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.normal),
            ),
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: DISABLED_COLOR, width: 1),
              backgroundColor: _link ? DISABLED_COLOR : Colors.white,
            ),
            onPressed: () => setState(() => _link = !_link),
          ),
        ]),
      ]),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Disabled extends StatefulWidget {
  const Disabled({Key? key}) : super(key: key);

  @override
  _DisabledState createState() => _DisabledState();
}

class _DisabledState extends State<Disabled> {
  bool _link = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(children: [
        Row(children: [
          ElevatedButton(
            onPressed: () => setState(() => _link = !_link),
            child: const Text(
              'Disabled ',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.normal),
            ),
            style: ElevatedButton.styleFrom(
              primary: _link ? TRANSPARENT_COLOR : DISABLED_COLOR,
            ),
          ),
        ]),
      ]),
    );
  }
}

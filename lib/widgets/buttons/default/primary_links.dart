import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class PrimaryLinks extends StatefulWidget {
  const PrimaryLinks({Key? key}) : super(key: key);

  @override
  _PrimaryLinksState createState() => _PrimaryLinksState();
}

class _PrimaryLinksState extends State<PrimaryLinks> {
  bool _link = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(children: [
        Row(children: [


          ElevatedButton(
            onPressed: () => setState(() => _link = !_link ),
            child: const Text(
              'Primary ',
              style:
              TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
            ),
            style: ElevatedButton.styleFrom(
              primary: _link ? BLUE_COLOR: PRIMARY_COLOR,
            ),
          ),
        ]),
      ]),
    );
  }
}

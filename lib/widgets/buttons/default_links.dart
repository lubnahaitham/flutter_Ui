import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class DefaultLinks extends StatefulWidget {
  const DefaultLinks({Key? key}) : super(key: key);

  @override
  _DefaultLinksState createState() => _DefaultLinksState();
}

class _DefaultLinksState extends State<DefaultLinks> {
  bool _link = true;
  bool _link2 = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(children: [
        Row(children: [
          ElevatedButton(
            onPressed: () => setState(() => _link  = !_link ),
            child: const Text(
              'Disabled ',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.normal),
            ),

            style: ElevatedButton.styleFrom(
              primary: _link  ? TRANSPARENT_COLOR: DISABLED_COLOR,
            ),

    ),

          SizedBox(
            width: 12,
          ),
          ElevatedButton(
            onPressed: () => setState(() => _link2 = !_link2 ),
            child: const Text(
              'Primary ',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
            ),
            style: ElevatedButton.styleFrom(
              primary: _link2  ? BLUE_COLOR: PRIMARY_COLOR,
            ),
          ),
        ]),
      ]),
    );
  }
}

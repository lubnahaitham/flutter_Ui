import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class DefaultLinks extends StatefulWidget {
  const DefaultLinks({Key? key}) : super(key: key);

  @override
  _DefaultLinksState createState() => _DefaultLinksState();
}

class _DefaultLinksState extends State<DefaultLinks> {

  bool _link = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(children: [
        Row(children: [
          OutlinedButton(
            child: const Text(
              'default',
              style:
                  TextStyle(color: Colors.black,
                      fontWeight: FontWeight.normal),
            ),
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: Colors.black, width: 1),
              backgroundColor: _link  ? Colors.white: DISABLED_COLOR,
            ),
            onPressed: () => setState(() => _link  = !_link ),
          ),

          ],
        ),

      ]),
    );
  }
}

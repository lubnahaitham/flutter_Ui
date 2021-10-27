import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Primary extends StatelessWidget {
  const Primary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Column(children: [
          Row(children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Primary ',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.normal),
              ),
              style: ElevatedButton.styleFrom(
                primary: PRIMARY_COLOR,
              ),
            ),
          ]),
        ]));
  }
}

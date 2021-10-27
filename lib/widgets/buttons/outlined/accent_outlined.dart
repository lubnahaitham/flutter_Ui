import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class AccentOutlined extends StatelessWidget {
  const AccentOutlined({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(children: [
        Row(children: [
          OutlinedButton(
            child: const Text(
              'Accent',
              style:
                  TextStyle(color: ACCENT_COLOR, fontWeight: FontWeight.normal),
            ),
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: ACCENT_COLOR, width: 1),
            ),
            onPressed: () {},
          )
        ]),
      ]),
    );
  }
}

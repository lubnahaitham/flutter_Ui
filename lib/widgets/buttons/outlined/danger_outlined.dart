import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class DangerOutlined extends StatelessWidget {
  const DangerOutlined({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(children: [
        Row(children: [
          OutlinedButton(
            child: Text(
              'Danger',
              style:
                  TextStyle(color: DANGER_COLOR, fontWeight: FontWeight.normal),
            ),
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: DANGER_COLOR, width: 1),
            ),
            onPressed: () {},
          ),
        ]),
      ]),
    );
  }
}

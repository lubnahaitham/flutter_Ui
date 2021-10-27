import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class WarningOutlined extends StatelessWidget {
  const WarningOutlined({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(children: [
        Row(children: [
          OutlinedButton(
            child: const Text(
              'Warning',
              style: TextStyle(
                  color: WARNING_COLOR, fontWeight: FontWeight.normal),
            ),
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: WARNING_COLOR, width: 1),
            ),
            onPressed: () {},
          ),
        ]),
      ]),
    );
  }
}

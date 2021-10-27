import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class SecondaryOutlined extends StatelessWidget {
  const SecondaryOutlined({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(children: [
        Row(children: [
          OutlinedButton(
            child: Text(
              'Secondary',
              style: TextStyle(
                  color: SECONDARY_COLOR, fontWeight: FontWeight.normal),
            ),
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: SECONDARY_COLOR, width: 1),
            ),
            onPressed: () {},
          ),
        ]),
      ]),
    );
  }
}

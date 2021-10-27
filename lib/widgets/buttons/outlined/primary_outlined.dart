import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class PrimaryOutlined extends StatelessWidget {
  const PrimaryOutlined({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(children: [
        Row(children: [
          OutlinedButton(
            child: const Text(
              'Primary',
              style: TextStyle(
                  color: PRIMARY_COLOR, fontWeight: FontWeight.normal),
            ),
            style: OutlinedButton.styleFrom(
              side: const BorderSide(color: PRIMARY_COLOR, width: 1),
            ),
            onPressed: () {},
          ),
        ]),
      ]),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class InfoOutlined extends StatelessWidget {
  const InfoOutlined({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(children: [
        Row(children: [
          OutlinedButton(
            child: Text(
              'Info',
              style:
                  TextStyle(color: INFO_COLOR, fontWeight: FontWeight.normal),
            ),
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: INFO_COLOR, width: 1),
            ),
            onPressed: () {},
          ),
        ]),
      ]),
    );
  }
}

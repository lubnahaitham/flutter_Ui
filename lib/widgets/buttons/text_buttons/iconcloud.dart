import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class IconCloud extends StatelessWidget {
  const IconCloud({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(children: [
        IconButton(
          icon: Icon(
            Icons.cloud_circle,
          ),
          iconSize: 40,
          color: SUCCESS_COLOR,
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(
            Icons.cloud_circle,
          ),
          iconSize: 30,
          color: SUCCESS_COLOR,
          onPressed: () {},
        ),
      ]),
    ]);
  }
}

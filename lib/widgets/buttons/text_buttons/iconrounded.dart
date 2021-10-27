import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class IconRounded extends StatelessWidget {
  const IconRounded({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(children: [
        IconButton(
          icon: Icon(
            Icons.info_rounded,
          ),
          iconSize: 30,
          color: INFO_COLOR,
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(
            Icons.info_rounded,
          ),
          iconSize: 40,
          color: INFO_COLOR,
          onPressed: () {},
        ),
      ]),
    ]);
  }
}

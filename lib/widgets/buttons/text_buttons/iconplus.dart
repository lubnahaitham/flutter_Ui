import 'package:flutter/material.dart';

import '../../../constants.dart';

class IconPlus extends StatelessWidget {
  const IconPlus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
        Row(
          children: [
            IconButton(
              icon: Icon(
                Icons.add_circle_outlined,
              ),
              iconSize: 30,
              color: PRIMARY_COLOR,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.add_circle_outlined,
              ),
              iconSize: 40,
              color: PRIMARY_COLOR,
              onPressed: () {},
            ),
          ],
        ),
      ]);

  }
}

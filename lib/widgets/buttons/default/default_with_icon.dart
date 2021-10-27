import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class DefaultIcon extends StatelessWidget {
  const DefaultIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(children: [
        Row(
          children: [
            ElevatedButton.icon(
              onPressed: () {},
              style: ElevatedButton.styleFrom(primary: SECONDARY_COLOR),
              label: const Text('default'),
              icon: const Icon(Icons.info_rounded),
            )
          ],
        )
      ]),
    );
  }
}

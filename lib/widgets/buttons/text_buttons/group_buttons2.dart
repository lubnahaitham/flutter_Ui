import 'package:flutter/material.dart';

import '../../../constants.dart';

class GroupButton2 extends StatelessWidget {
  const GroupButton2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(children: [
        Row(
          children: [
            OutlinedButton(
              child: const Text(
                'default ',
                style:
                    TextStyle(color: INFO_COLOR, fontWeight: FontWeight.normal),
              ),
              style: OutlinedButton.styleFrom(
                  side: BorderSide(color: INFO_COLOR, width: 1)),
              onPressed: () {},
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text(
                'Primary ',
                style: TextStyle(
                    color: PRIMARY_COLOR, fontWeight: FontWeight.normal),
              ),
              style: OutlinedButton.styleFrom(
                  side: BorderSide(color: PRIMARY_COLOR, width: 1)),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text(
                'Secondary ',
                style: TextStyle(
                    color: SECONDARY_COLOR, fontWeight: FontWeight.normal),
              ),
              style: OutlinedButton.styleFrom(
                  side: BorderSide(color: SECONDARY_COLOR, width: 1)),
            ),
          ],
        ),
      ]),
    );
  }
}

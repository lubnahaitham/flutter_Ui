import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class GroupButton extends StatelessWidget {
  const GroupButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
    child: Column(children: [
      Row(
        children: [
          ElevatedButton(
            child: const Text(
              'default ',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
            ),
            style: ElevatedButton.styleFrom(
              primary: INFO_COLOR,
            ),
            onPressed: () {},
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              'Primary ',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
            ),
            style: ElevatedButton.styleFrom(
              primary: PRIMARY_COLOR,
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              'Secondary ',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
            ),
            style: ElevatedButton.styleFrom(
              primary: SECONDARY_COLOR,
            ),
          ),
        ],
      ),
    ]),
    );
  }
}

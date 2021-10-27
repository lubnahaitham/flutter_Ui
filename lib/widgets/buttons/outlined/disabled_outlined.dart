import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class DisabledOutlined extends StatelessWidget {
  const DisabledOutlined({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(children: [
        Row(
          children: [
            OutlinedButton(
              child: Text(
                'Disabled',
                style: TextStyle(
                    color: DISABLED_COLOR, fontWeight: FontWeight.normal),
              ),
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: DISABLED_COLOR, width: 1),
              ),
              onPressed: () {},
            ),
          ],
        )
      ]),
    );
  }
}

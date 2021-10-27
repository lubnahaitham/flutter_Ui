import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class DisabledRounded extends StatelessWidget {
  const DisabledRounded({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(children: [
        Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Disabled',
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.normal),
              ),
              style: ElevatedButton.styleFrom(
                primary: DISABLED_COLOR,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
              ),
            ),
          ],
        )
      ]),
    );
  }
}

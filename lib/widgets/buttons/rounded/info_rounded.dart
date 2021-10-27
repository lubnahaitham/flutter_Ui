import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class InfoRounded extends StatelessWidget {
  const InfoRounded({Key? key}) : super(key: key);

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
                'Info ',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.normal),
              ),
              style: ElevatedButton.styleFrom(
                primary: INFO_COLOR,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}

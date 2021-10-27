import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class InfoSize extends StatelessWidget {
  const InfoSize({Key? key}) : super(key: key);

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
                'Info',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.normal),
              ),
              style: ElevatedButton.styleFrom(
                primary: INFO_COLOR,
                minimumSize: Size(110, 55),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}

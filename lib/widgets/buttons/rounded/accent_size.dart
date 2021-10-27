import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class AccentSizeRounded extends StatelessWidget {
  const AccentSizeRounded({Key? key}) : super(key: key);

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
                'Accent',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.normal),
              ),
              style: ElevatedButton.styleFrom(
                primary: ACCENT_COLOR,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                minimumSize: Size(100, 35),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}

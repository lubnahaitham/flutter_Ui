import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class PrimarySizeRounded extends StatelessWidget {
  const PrimarySizeRounded({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(children: [
        Row(children: [
          ConstrainedBox(
            constraints: const BoxConstraints.tightFor(width: 90, height: 20),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Primary',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.normal),
              ),
              style: ElevatedButton.styleFrom(
                primary: PRIMARY_COLOR,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
              ),
            ),
          ),
        ]),
      ]),
    );
  }
}

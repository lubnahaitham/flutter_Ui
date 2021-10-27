import 'package:flutter/material.dart';

import '../../../constants.dart';

class SuccessRounded extends StatelessWidget {
  const SuccessRounded({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(children: [
        Row(children: [
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              'Success ',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
            ),
            style: ElevatedButton.styleFrom(
              primary: SUCCESS_COLOR,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
            ),
          ),
        ]),
      ]),
    );
  }
}

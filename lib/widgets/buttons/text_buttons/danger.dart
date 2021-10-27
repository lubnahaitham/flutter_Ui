import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class DangerText extends StatefulWidget {
  const DangerText({Key? key}) : super(key: key);

  @override
  _DangerTextState createState() => _DangerTextState();
}

class _DangerTextState extends State<DangerText> {
  bool _link8 = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(children: [
        Row(
          children: [
            TextButton(
              child: Text('Danger',
                  style: TextStyle(
                      color: DANGER_COLOR, fontWeight: FontWeight.normal)),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      _link8 ? SOFT_DANGER : Colors.white)),
              onPressed: () => setState(() => _link8 = !_link8),
            ),
          ],
        ),
      ]),
    );
  }
}

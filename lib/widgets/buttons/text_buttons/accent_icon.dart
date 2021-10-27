import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class AccentIconText extends StatefulWidget {
  const AccentIconText({Key? key}) : super(key: key);

  @override
  _AccentIconTextState createState() => _AccentIconTextState();
}

class _AccentIconTextState extends State<AccentIconText> {
  bool _link = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(children: [
        Row(children: [
          TextButton.icon(
            label: Text('Accent',
                style: TextStyle(
                    color: ACCENT_COLOR, fontWeight: FontWeight.normal)),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    _link ? SOFT_ACCENT : Colors.white)),
            onPressed: () => setState(() => _link = !_link),
            icon: Icon(
              Icons.info_rounded,
              color: ACCENT_COLOR,
            ),
          ),
        ]),
      ]),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class InfoText extends StatefulWidget {
  const InfoText({Key? key}) : super(key: key);

  @override
  _InfoTextState createState() => _InfoTextState();
}

class _InfoTextState extends State<InfoText> {
  bool _link6 = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(children: [
        Row(children: [
          TextButton(
            child: Text('Info',
                style: TextStyle(
                    color: INFO_COLOR, fontWeight: FontWeight.normal)),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    _link6 ? SOFT_INFO : Colors.white)),
            onPressed: () => setState(() => _link6 = !_link6),
          ),
        ]),
      ]),
    );
  }
}

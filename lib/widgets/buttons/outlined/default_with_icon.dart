import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class DefaultIConOutlined extends StatefulWidget {
  const DefaultIConOutlined({Key? key}) : super(key: key);

  @override
  _DefaultIConOutlinedState createState() => _DefaultIConOutlinedState();
}

class _DefaultIConOutlinedState extends State<DefaultIConOutlined> {
  bool _link = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(children: [
        Row(
          children: [
            OutlinedButton.icon(

              style: OutlinedButton.styleFrom(
                side: BorderSide(color: ACCENT_COLOR, width: 1),
                backgroundColor: _link  ? SOFT_ACCENT : Colors.white,

              ),
              onPressed: () => setState(() => _link  = !_link),
              icon: const Icon(Icons.info_rounded,
                  color:ACCENT_COLOR),
              label: Text(
                'Default',
                style:
                TextStyle(color: ACCENT_COLOR,
                    fontWeight: FontWeight.normal),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}

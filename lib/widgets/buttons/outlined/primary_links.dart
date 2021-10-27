import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class PrimaryLinksOutlined extends StatefulWidget {
  const PrimaryLinksOutlined({Key? key}) : super(key: key);

  @override
  _PrimaryLinksOutlinedState createState() => _PrimaryLinksOutlinedState();
}

class _PrimaryLinksOutlinedState extends State<PrimaryLinksOutlined> {
  bool _primary = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(children: [
        Row(children: [

          OutlinedButton(
            child: const Text(
              'Primary',
              style:
              TextStyle(color: PRIMARY_COLOR,
                  fontWeight: FontWeight.normal),
            ),
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: PRIMARY_COLOR, width: 1),
              backgroundColor: _primary  ? SOFT_PRIMARY : Colors.white,

            ),
            onPressed: () => setState(() => _primary  = !_primary),
          ),

        ]),
      ]),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class OutlinedLinks extends StatefulWidget {
  const OutlinedLinks({Key? key}) : super(key: key);

  @override
  _OutlinedLinksState createState() => _OutlinedLinksState();
}

class _OutlinedLinksState extends State<OutlinedLinks> {

  bool _link = true;
  bool _link2 = true;
  bool _link3 = true;
  bool _link4 = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(children: [
        Row(children: [
          OutlinedButton(
            child: Text(
              'Default',
              style:
                  TextStyle(color: Colors.black,
                      fontWeight: FontWeight.normal),
            ),
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: Colors.black, width: 1),
              backgroundColor: _link  ? Colors.white: DISABLED_COLOR,
            ),
            onPressed: () => setState(() => _link  = !_link ),
          ),
          SizedBox(width: 12),
          OutlinedButton(
            child: Text(
              'Default',
              style:
              TextStyle(color: Colors.black,
                  fontWeight: FontWeight.normal),
            ),
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: DISABLED_COLOR, width: 1),
              backgroundColor: _link2  ? DISABLED_COLOR : Colors.white,
            ),
            onPressed: () => setState(() => _link2  = !_link2),
          ),

          SizedBox(width: 12),
          OutlinedButton(
            child: Text(
              'Primary',
              style:
              TextStyle(color: PRIMARY_COLOR,
                  fontWeight: FontWeight.normal),
            ),
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: PRIMARY_COLOR, width: 1),
              backgroundColor: _link3  ? SOFT_PRIMARY : Colors.white,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(50)),

            ),
            onPressed: () => setState(() => _link3  = !_link3),
          ),

        ]),

        Row(
          children: [
            OutlinedButton.icon(

              style: OutlinedButton.styleFrom(
                side: BorderSide(color: ACCENT_COLOR, width: 1),
                backgroundColor: _link4  ? SOFT_ACCENT : Colors.white,

              ),
              onPressed: () => setState(() => _link4  = !_link4),
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

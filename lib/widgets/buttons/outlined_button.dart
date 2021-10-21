import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class DefaultOutlinedButton extends StatefulWidget {
  const DefaultOutlinedButton({Key? key}) : super(key: key);

  @override
  _DefaultOutlinedButtonState createState() => _DefaultOutlinedButtonState();
}

class _DefaultOutlinedButtonState extends State<DefaultOutlinedButton> {
  @override
  Widget build(BuildContext context) {
    return
        Padding(
      padding: const EdgeInsets.all(30),
      child: Column(children: [
        Row(children: [
          OutlinedButton(
            child: Text(
              'Default',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal
              ),
            ),
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: Colors.black, width: 1),
            ),
            onPressed: () {},
          ),
          SizedBox(width: 12),

          OutlinedButton(
            child: Text(
              'Primary',
              style: TextStyle(
                color: PRIMARY_COLOR,
                  fontWeight: FontWeight.normal
              ),
            ),
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: PRIMARY_COLOR, width: 1),
            ),
            onPressed: () {},
          ),

          SizedBox(width: 12),

          OutlinedButton(
            child: Text(
              'Accent',
              style: TextStyle(
                color: ACCENT_COLOR,
                  fontWeight: FontWeight.normal
              ),
            ),
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: ACCENT_COLOR, width: 1),
            ),
            onPressed: () {},
          )
        ]),

        Row(
            children:[
              OutlinedButton(
                child: Text(
                  'Secondary',
                  style: TextStyle(
                    color: SECONDARY_COLOR,
                      fontWeight: FontWeight.normal
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: SECONDARY_COLOR, width: 1),
                ),
                onPressed: () {},
              ),
              SizedBox(width: 12),
              OutlinedButton(
                child: Text(
                  'Success',
                  style: TextStyle(
                      color: SUCCESS_COLOR,
                      fontWeight: FontWeight.normal
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: SUCCESS_COLOR, width: 1),
                ),
                onPressed: () {},
              ),

              SizedBox(width: 12),
              OutlinedButton(
                child: Text(
                  'Info',
                  style: TextStyle(
                      color: INFO_COLOR,
                      fontWeight: FontWeight.normal
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: INFO_COLOR, width: 1),
                ),
                onPressed: () {},
              ),
        ]),

        Row(
          children: [
            OutlinedButton(
              child: Text(
                'Warning',
                style: TextStyle(
                    color: WARNING_COLOR,
                    fontWeight: FontWeight.normal
                ),
              ),
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: WARNING_COLOR, width: 1),
              ),
              onPressed: () {},
            ),
            SizedBox(width: 12),
            OutlinedButton(
              child: Text(
                'Danger',
                style: TextStyle(
                    color: DANGER_COLOR,
                    fontWeight: FontWeight.normal
                ),
              ),
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: DANGER_COLOR, width: 1),
              ),
              onPressed: () {},
            ),

            SizedBox(width: 12),
            OutlinedButton(
              child: Text(
                'Disabled',
                style: TextStyle(
                    color: DISABLED_COLOR,
                    fontWeight: FontWeight.normal
                ),
              ),
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: DISABLED_COLOR, width: 1),
              ),
              onPressed: () {},
            ),

          ],
        )
      ]),

    );
  }
}

import 'package:advance_app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatefulWidget {
  const DefaultButton({Key? key}) : super(key: key);

  @override
  _DefaultButtonState createState() => _DefaultButtonState();
}

class _DefaultButtonState extends State<DefaultButton> {
  bool _button = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(children: [
        Row(
          children: [
            ElevatedButton(
              onPressed: () => setState(() => _button = !_button),
              child: const Text(
                'Default ',
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.normal),
              ),
              style: ElevatedButton.styleFrom(
                primary: _button ? TRANSPARENT_COLOR : Colors.grey[400],
              ),
            ),
            SizedBox(
              width: 12,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Primary ',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.normal),
              ),
              style: ElevatedButton.styleFrom(
                primary: PRIMARY_COLOR,
              ),
            ),
            SizedBox(width: 12),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Secondary ',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.normal),
              ),
              style: ElevatedButton.styleFrom(
                primary: SECONDARY_COLOR,
              ),
            ),
          ],
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Accent ',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.normal),
              ),
              style: ElevatedButton.styleFrom(
                primary: ACCENT_COLOR,
              ),
            ),
            SizedBox(width: 12),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Success ',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.normal),
              ),
              style: ElevatedButton.styleFrom(
                primary: SUCCESS_COLOR,
              ),
            ),
            SizedBox(width: 12),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Info ',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.normal),
              ),
              style: ElevatedButton.styleFrom(
                primary: INFO_COLOR,
              ),
            ),
          ],
        ),
        Row(children: [
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              'Warning ',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
            ),
            style: ElevatedButton.styleFrom(
              primary: WARNING_COLOR,
            ),
          ),
          SizedBox(width: 12),
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              'Danger ',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
            ),
            style: ElevatedButton.styleFrom(
              primary: DANGER_COLOR,
            ),
          ),
        ]),

//sizes
        Row(
          children: [
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
                ),
              ),
            ),

            SizedBox(width: 12),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Secondary',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.normal),
              ),
              style: ElevatedButton.styleFrom(
                primary: SECONDARY_COLOR,
                minimumSize: Size(100, 30),
              ),
            ),

            SizedBox(width: 12),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Accent',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.normal),
              ),
              style: ElevatedButton.styleFrom(
                primary: ACCENT_COLOR,
                minimumSize: Size(100, 35),
              ),
            ),
          ],
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Success',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.normal),
              ),
              style: ElevatedButton.styleFrom(
                primary: SUCCESS_COLOR,
                minimumSize: Size(110, 45),
              ),
            ),
            SizedBox(width: 12),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Info',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.normal),
              ),
              style: ElevatedButton.styleFrom(
                primary: INFO_COLOR,
                minimumSize: Size(110, 55),
              ),
            ),
          ],
        ),

        Row(
          children: [
            ElevatedButton.icon(
              onPressed: () {},
              style: ElevatedButton.styleFrom(primary: SECONDARY_COLOR),
              label: const Text('Default'),
              icon: const Icon(Icons.info_rounded),
            )
          ],
        )
      ]),
    );
  }
}

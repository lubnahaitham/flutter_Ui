import 'package:advance_app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DefaultRoundedButton extends StatefulWidget {
  const DefaultRoundedButton({Key? key}) : super(key: key);

  @override
  _DefaultRoundedButtonState createState() => _DefaultRoundedButtonState();
}

class _DefaultRoundedButtonState extends State<DefaultRoundedButton> {
  bool _button = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(30),
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
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
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
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(50))),
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
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(50)),
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
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
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
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
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
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
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
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
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
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
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
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
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
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
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
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
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
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
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
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                minimumSize: Size(110, 55),
              ),
            ),
          ],
        ),

        Row(
          children: [
            ElevatedButton.icon(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: ACCENT_COLOR,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),),
              label: const Text('Default'),
              icon: const Icon(Icons.info_rounded),
            ),

            SizedBox(width: 12),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Disabled',
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.normal),
              ),
              style: ElevatedButton.styleFrom(
                primary: DISABLED_COLOR,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
              ),
            ),
          ],
        )
      ]),
        ),
    );
  }
}

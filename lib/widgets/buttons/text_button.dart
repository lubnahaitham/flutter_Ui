import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class TextButtons extends StatefulWidget {
  const TextButtons({Key? key}) : super(key: key);

  @override
  _TextButtonsState createState() => _TextButtonsState();
}

class _TextButtonsState extends State<TextButtons> {
  bool _link1 = false;
  bool _link2 = false;
  bool _link3 = false;
  bool _link4 = false;
  bool _link5 = false;
  bool _link6 = false;
  bool _link7 = false;
  bool _link8 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(children: [
          Row(children: [
            TextButton(
              child: Text('Default',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.normal)),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      _link1 ? SOFT_DEFAULT : Colors.white)),
              onPressed: () => setState(() => _link1 = !_link1),
            ),
            SizedBox(width: 12),
            TextButton(
              child: Text('Primary',
                  style: TextStyle(
                      color: PRIMARY_COLOR, fontWeight: FontWeight.normal)),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      _link2 ? SOFT_PRIMARY : Colors.white)),
              onPressed: () => setState(() => _link2 = !_link2),
            ),
            SizedBox(width: 12),
            TextButton(
              child: Text('Accent',
                  style: TextStyle(
                      color: ACCENT_COLOR, fontWeight: FontWeight.normal)),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      _link3 ? SOFT_ACCENT : Colors.white)),
              onPressed: () => setState(() => _link3 = !_link3),
            ),
            SizedBox(width: 12),
            TextButton(
              child: Text('Secondary',
                  style: TextStyle(
                      color: SECONDARY_COLOR, fontWeight: FontWeight.normal)),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      _link4 ? SOFT_SECONDARY : Colors.white)),
              onPressed: () => setState(() => _link4 = !_link4),
            ),
          ]),
          Row(
            children: [
              TextButton(
                child: Text('Success',
                    style: TextStyle(
                        color: SUCCESS_COLOR, fontWeight: FontWeight.normal)),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        _link5 ? SOFT_SUCCESS : Colors.white)),
                onPressed: () => setState(() => _link5 = !_link5),
              ),
              SizedBox(width: 12),
              TextButton(
                child: Text('Info',
                    style: TextStyle(
                        color: INFO_COLOR, fontWeight: FontWeight.normal)),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        _link6 ? SOFT_INFO : Colors.white)),
                onPressed: () => setState(() => _link6 = !_link6),
              ),
              SizedBox(width: 12),
              TextButton(
                child: Text('Warning',
                    style: TextStyle(
                        color: WARNING_COLOR, fontWeight: FontWeight.normal)),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        _link7 ? SOFT_WARNING : Colors.white)),
                onPressed: () => setState(() => _link7 = !_link7),
              ),
              SizedBox(width: 12),
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
          Row(
            children: [
              TextButton.icon(
                label: Text('Accent',
                    style: TextStyle(
                        color: ACCENT_COLOR, fontWeight: FontWeight.normal)),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        _link3 ? SOFT_ACCENT : Colors.white)),
                onPressed: () => setState(() => _link3 = !_link3),
                icon: Icon(
                  Icons.info_rounded,
                  color: ACCENT_COLOR,
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.home,
                ),
                iconSize: 20,
                color: Colors.grey,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.home,
                ),
                iconSize: 30,
                color: Colors.grey,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.add_circle_outlined,
                ),
                iconSize: 30,
                color: PRIMARY_COLOR,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.add_circle_outlined,
                ),
                iconSize: 40,
                color: PRIMARY_COLOR,
                onPressed: () {},
              ),
            ],
          ),
          Row(children: [
            IconButton(
              icon: Icon(
                Icons.cloud_circle,
              ),
              iconSize: 40,
              color: SUCCESS_COLOR,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.cloud_circle,
              ),
              iconSize: 30,
              color: SUCCESS_COLOR,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.info_rounded,
              ),
              iconSize: 30,
              color: INFO_COLOR,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.info_rounded,
              ),
              iconSize: 40,
              color: INFO_COLOR,
              onPressed: () {},
            ),
          ]),
          Row(
            children: [
              ElevatedButton(
                child: const Text(
                  'Default ',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.normal),
                ),
                style: ElevatedButton.styleFrom(
                  primary: INFO_COLOR,
                ),
                onPressed: () {},
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
              OutlinedButton(
                child: const Text(
                  'Default ',
                  style: TextStyle(
                      color: INFO_COLOR, fontWeight: FontWeight.normal),
                ),
                style: OutlinedButton.styleFrom(
                side: BorderSide(color: INFO_COLOR, width: 1)),
                onPressed: () {},
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text(
                  'Primary ',
                  style: TextStyle(
                      color: PRIMARY_COLOR, fontWeight: FontWeight.normal),
                ),
                style: OutlinedButton.styleFrom(
                    side: BorderSide(color: PRIMARY_COLOR, width: 1)),
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text(
                  'Secondary ',
                  style: TextStyle(
                      color: SECONDARY_COLOR, fontWeight: FontWeight.normal),
                ),
    style: OutlinedButton.styleFrom(
    side: BorderSide(color: SECONDARY_COLOR, width: 1)),

              ),
            ],
          ),
        ]),
      ),
    );
  }
}

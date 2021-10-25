import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_switch.dart';

class SwitchButton extends StatefulWidget {
  const SwitchButton({Key? key}) : super(key: key);

  @override
  _SwitchButtonState createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  bool _enable = false;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CustomSwitch(
            value: _enable,
            onChanged: (bool val){
              setState(() {
                _enable = val;
              });
            },
          ),

        ],


    );
  }
}

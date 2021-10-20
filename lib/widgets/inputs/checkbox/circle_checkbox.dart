import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class CircleCheckBoxField extends StatefulWidget {
  const CircleCheckBoxField({Key? key}) : super(key: key);

  @override
  _CircleCheckBoxFieldState createState() => _CircleCheckBoxFieldState();
}

class _CircleCheckBoxFieldState extends State<CircleCheckBoxField> {
  bool checked = true;

  void getCircleCheckBoxField(bool value) {

    if(checked == false)
    {
      // Put your code here which you want to execute on CheckBox Checked.
      setState(() {
        checked = true;
      });

    }
    else
    {
      // Put your code here which you want to execute on CheckBox Un-Checked.
      setState(() {
        checked = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Checkbox(
        activeColor: PRIMARY_COLOR,
        checkColor: Colors.white,
        value: checked,
        shape: CircleBorder(),
        onChanged: (value){getCircleCheckBoxField(value!);},
        tristate: false,

      ),

      Checkbox(
        activeColor: Colors.white12,
        checkColor: PRIMARY_COLOR,
        value: checked,
        shape: CircleBorder(),
        onChanged: (value){getCircleCheckBoxField(value!);},
        tristate: false,
      ),


      Checkbox(
        activeColor: ACCENT_COLOR,
        checkColor: Colors.white,
        value: checked,
        shape: CircleBorder(),
        onChanged: (value){getCircleCheckBoxField(value!);},
        tristate: false,
      ),

      Checkbox(
        activeColor: Colors.white12,
        checkColor: ACCENT_COLOR,
        value: checked,
        shape: CircleBorder(),
        onChanged: (value){getCircleCheckBoxField(value!);},
        tristate: false,
      ),
    ]);
  }
}

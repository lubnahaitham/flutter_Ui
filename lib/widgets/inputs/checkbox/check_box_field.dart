import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class CheckBoxField extends StatefulWidget {
  const CheckBoxField({Key? key}) : super(key: key);

  @override
  _CheckBoxFieldState createState() => _CheckBoxFieldState();
}

class _CheckBoxFieldState extends State<CheckBoxField> {
  bool checked = true;

  void getCheckBoxField(bool value) {

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
    return Theme(
        data: ThemeData(unselectedWidgetColor: Colors.black),
    child: Row(children: <Widget>[
      SizedBox(
        width: 150,
        child: CheckboxListTile(
          onChanged: (value){getCheckBoxField(value!);},
          value: checked,
          activeColor: PRIMARY_COLOR,
          checkColor: Colors.white,
          tristate: false,
          title: Text("loerm ipusm"),
          controlAffinity: ListTileControlAffinity.leading,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 10,
          ),
        ),
      ),

      SizedBox(
        width: 150,
        child: CheckboxListTile(
          onChanged: (value){getCheckBoxField(value!);},
          value: checked,
          activeColor: Colors.red,
          checkColor: Colors.white,
          tristate: false,
          title: Text("loerm ipusm"),
          controlAffinity: ListTileControlAffinity.leading,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 10,
          ),
        ),
      ),
    ]),
    );//<Widget>[]//Row
  }
}

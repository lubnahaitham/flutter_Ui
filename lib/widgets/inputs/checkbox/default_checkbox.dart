import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class DefaultCheckBoxField extends StatefulWidget {
  const DefaultCheckBoxField({Key? key}) : super(key: key);

  @override
  _DefaultCheckBoxFieldState createState() => _DefaultCheckBoxFieldState();
}

class _DefaultCheckBoxFieldState extends State<DefaultCheckBoxField> {
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
    return Column(children: [
      CheckboxListTile(
        onChanged: (value){getCheckBoxField(value!);},
        value: checked,
        tristate: false,
        activeColor: ACCENT_COLOR,
        checkColor: Colors.white,
        title: Text("loerm ipusm"),
        controlAffinity: ListTileControlAffinity.leading,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
      ),

      CheckboxListTile(
        onChanged: (bool? value) {},
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
    ]);
  }
}

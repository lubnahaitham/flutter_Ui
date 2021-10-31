
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class RadioField extends StatefulWidget {
  const RadioField({Key? key}) : super(key: key);

  @override
  _RadioFieldState createState() => _RadioFieldState();
}

class _RadioFieldState extends State<RadioField> {
  final bool _value = false;
  int? val = -1;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(unselectedWidgetColor: Colors.grey),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
        ListTile(
          title: const Text("radio field"),
          leading: Radio(
            value: 1,
            groupValue: val,
            onChanged: (value) {
              setState(() {
                val = value as int?;
              });
            },
            activeColor: ACCENT_COLOR,
            toggleable: true,
          ),
        ),

        ListTile(
          title: const Text("lorem ipsum"),
          leading: Radio(
            value: 1,
            groupValue: val,
            onChanged: (value) {
              setState(() {
                val = value as int?;
              });
            },
            activeColor: PRIMARY_COLOR,
            toggleable: true,
          ),
        ),
      ]),
    );
  }
}

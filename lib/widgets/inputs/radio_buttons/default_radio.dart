import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:advance_app/constants.dart';

class DefaultRadioField extends StatefulWidget {
  const DefaultRadioField({Key? key}) : super(key: key);

  @override
  _DefaultRadioFieldState createState() => _DefaultRadioFieldState();
}

class _DefaultRadioFieldState extends State<DefaultRadioField> {
  final bool _value = false;
  int? val = -1;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(unselectedWidgetColor: Colors.grey),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
        SizedBox(
          width: 200,
          child: ListTile(
            title: const Text("lorem ipsum"),
            leading: Radio(
              value: 1,
              activeColor: PRIMARY_COLOR,
              groupValue: val,
              onChanged: (value) {
                setState(() {
                  val = value as int?;
                });
              },
              toggleable: true,
            ),
          ),
        ),
      ]),
    );
  }
}

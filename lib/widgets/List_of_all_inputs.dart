import 'package:advance_app/widgets/cards/list_cards.dart';
import 'package:advance_app/widgets/inputs/radio_buttons/list_radio.dart';
import 'package:advance_app/widgets/lists/list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'inputs/checkbox/list_checkbox.dart';
import 'inputs/default_text_area/text_area.dart';
import 'inputs/dropdown/list_dropdown.dart';
import 'inputs/file_field/list_field_file.dart';
import 'inputs/input_fields/list_inputs.dart';

class ListAllInputs extends StatelessWidget {
  const ListAllInputs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ListInputs()));
              },
              child: Text('Input Fields')),

          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ListRadio(),
                    ));
              },
              child: Text('RadioFields')),

          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ListFileField(),
                    ));
              },
              child: Text('File Field')),

          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ListDropDown(),
                    ));
              },
              child: Text('DropDown Field')),

          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TextAreaField(),
                    ));
              },
              child: Text('TextArea Field')),

          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ListCheckBox(),
                    ));
              },
              child: Text('CheckBoxField')),

          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ListsView(),
                    ));
              },
              child: Text('List')),

          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ListCards(),
                    ));
              },
              child: Text('List Cards')),
        ],
      ),
    );
  }
}

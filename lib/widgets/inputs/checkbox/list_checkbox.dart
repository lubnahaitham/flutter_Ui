import 'package:advance_app/widgets/inputs/radio_buttons/default_radio.dart';
import 'package:advance_app/widgets/inputs/radio_buttons/list_radio.dart';
import 'package:flutter/material.dart';

import '../input_widget.dart';
import 'check_box_field.dart';
import 'circle_checkbox.dart';
import 'default_checkbox.dart';

class ListCheckBox extends StatelessWidget {
  const ListCheckBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('default CheckBox Field'),
        centerTitle: true,
      ),
      body: Padding(padding: EdgeInsets.all(10), child: ListView(
          children: [
        Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [

              InputWidget(
                title: 'checkbox',
                field: CheckBoxField(),
                errorMessage: 'please enter valid title',
                titleTextStyle: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                errorTextStyle:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
              ),

              InputWidget(
                title: 'checkbox',
                field: DefaultCheckBoxField(),
                errorMessage: 'please enter valid title',
                titleTextStyle: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                errorTextStyle:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
              ),


              InputWidget(
                title: 'checkbox',
                field: CircleCheckBoxField(),
                errorMessage: 'please enter valid title',
                titleTextStyle: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                errorTextStyle:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
              ),


        ]),

      ]),
      ),
    );
  }
}

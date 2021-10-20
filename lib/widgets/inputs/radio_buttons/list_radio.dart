
import 'package:advance_app/widgets/inputs/dropdown/list_dropdown.dart';
import 'package:advance_app/widgets/inputs/radio_buttons/radio_input.dart';
import 'package:flutter/material.dart';

import '../input_widget.dart';
import 'default_radio.dart';

class ListRadio extends StatelessWidget {
  const ListRadio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Radio Field'),
        centerTitle: true,
      ),
      body: Padding(padding: EdgeInsets.all(10), child: ListView(
          children: [
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [

                  InputWidget(
                    title: 'Radio',
                    field: DefaultRadioField(),
                    errorMessage: 'please enter valid title',
                    titleTextStyle: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                    errorTextStyle:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
                  ),

                  InputWidget(
                    title: 'Radio',
                    field: RadioField(),
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

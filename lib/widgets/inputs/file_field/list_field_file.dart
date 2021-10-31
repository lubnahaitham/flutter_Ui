
import 'package:advance/new_ui/widgets/inputs/file_field/default_field_file.dart';
import 'package:advance/new_ui/widgets/inputs/input_widget.dart';
import 'package:flutter/material.dart';



import 'error_field_file.dart';

class ListFileField extends StatelessWidget {
  const ListFileField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('default Input Field'),
        centerTitle: true,
      ),
      body:Padding(padding: EdgeInsets.all(10), child: ListView(
          children: [
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [

            InputWidget(
              title: 'File',
              field: DefaultFieldFile(),
              errorMessage: 'please enter valid title',
              titleTextStyle:
                  TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              errorTextStyle:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
            ),

            SizedBox(height: 20),

            InputWidget(
              title: 'File',
              field: ErrorFileField(),
              errorMessage: 'please enter valid title',
              titleTextStyle:
                  TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              errorTextStyle:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
            ),
               ]),

          ]),
      ),

    );
  }
}

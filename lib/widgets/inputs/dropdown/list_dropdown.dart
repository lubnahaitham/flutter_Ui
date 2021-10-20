
import 'package:advance_app/widgets/inputs/default_text_area/text_area.dart';
import 'package:advance_app/widgets/inputs/dropdown/underline.dart';
import 'package:flutter/material.dart';

import '../input_widget.dart';
import 'default.dart';
import 'error.dart';

class ListDropDown extends StatelessWidget {
  const ListDropDown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Default Input Field'),
        centerTitle: true,
      ),
      body: Padding(padding: EdgeInsets.all(10), child: ListView(
          children: [
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [

                  InputWidget(
                    title: 'Start Select :',
                    field: DefaultDropDown(),
                    errorMessage: 'please enter valid title',
                    titleTextStyle: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                    errorTextStyle:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
                  ),


                  InputWidget(
                    title: 'Start Select :',
                    field: UnderlineDropDown(),
                    errorMessage: 'please enter valid title',
                    titleTextStyle: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                    errorTextStyle:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
                  ),

                  InputWidget(
                    title: 'Start Select :',
                    field: ErrorDropDown(),
                    errorMessage: 'please enter valid title',
                    titleTextStyle: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                    errorTextStyle:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                  ),



                ]),


          ]),
      ),
    );
  }
}

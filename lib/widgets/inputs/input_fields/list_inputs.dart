import 'package:advance/new_ui/widgets/inputs/input_fields/default_input.dart';
import 'package:advance/new_ui/widgets/inputs/input_fields/error_input.dart';
import 'package:advance/new_ui/widgets/inputs/input_fields/large_input.dart';
import 'package:advance/new_ui/widgets/inputs/input_fields/small_input.dart';
import 'package:advance/new_ui/widgets/inputs/input_fields/underline_input.dart';
import 'package:advance/new_ui/widgets/inputs/input_widget.dart';
import 'package:flutter/material.dart';


class ListInputs extends StatelessWidget {
  const ListInputs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('default Input Field'),
        centerTitle: true,
      ),
      body: Padding(padding:EdgeInsets.all(10), child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const InputWidget(
                title: 'course title',
                field: InputField(),
                errorMessage: 'please enter valid title',
                titleTextStyle: TextStyle(fontWeight: FontWeight.bold),
                errorTextStyle:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
              ),
              InputWidget(
                title: 'course title',
                field: SmallInputField(),
                errorMessage: 'please enter valid title',
                titleTextStyle: TextStyle(fontWeight: FontWeight.bold),
                errorTextStyle: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.green),
              ),
              const InputWidget(
                title: 'course title',
                field: LargeInputField(),
                errorMessage: 'please enter valid title',
                titleTextStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                errorTextStyle:
                    TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.green),
              ),
              const InputWidget(
                title: 'course title',
                field: UnderLineInputField(),
                errorMessage: 'please enter valid title',
                titleTextStyle: TextStyle(fontWeight: FontWeight.bold),
                errorTextStyle:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
              ),
              const InputWidget(
                title: 'course title',
                field: ErrorInputField(),
                errorMessage: 'please enter valid title',
                titleTextStyle:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                errorTextStyle:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
              ),

            ],
          ),
        ],
      ),
      ),
    );
  }
}

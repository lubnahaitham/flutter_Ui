import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UnderlineDropDown extends StatefulWidget {
  const UnderlineDropDown({Key? key}) : super(key: key);

  @override
  _UnderlineDropDownState createState() => _UnderlineDropDownState();
}

class _UnderlineDropDownState extends State<UnderlineDropDown> {
  get options => null;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView( child:
    Column(
        crossAxisAlignment : CrossAxisAlignment.start,
        children: <Widget> [
          InputDecorator(
            decoration: InputDecoration(
              border: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: Colors.grey[350]!),
              ),
              contentPadding: EdgeInsets.all(10),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: options,
                isDense: true,
                isExpanded: true,
                items: const [
                  DropdownMenuItem(child: Text("option1"), value: "option1"),
                  DropdownMenuItem(child: Text("option2"), value: "option2"),
                  DropdownMenuItem(child: Text("option3"), value: "option3"),
                  DropdownMenuItem(child: Text("option4"), value: "option4"),

                ],
                onChanged: (newValue) {
                  setState(() {

                  },);

                }, hint: const Text('Select option'),
              ),
            ),
          ),
        ]
    ),
    );
  }
}

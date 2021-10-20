import 'package:flutter/material.dart';

class LargeInputField extends StatelessWidget {
  const LargeInputField({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
        children: [

          SizedBox(
            child: TextField(
              style: const TextStyle(color: Colors.black),
              decoration: InputDecoration(
                hintStyle: const TextStyle(color: Colors.grey),
                hintText: "Insert your course title",
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    color: Colors.blue[400]!,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    color: Colors.grey[350]!,
                    width: 1.0,
                  ),
                ),
              ),
            ),
            ),

        ],
    );
  }
}

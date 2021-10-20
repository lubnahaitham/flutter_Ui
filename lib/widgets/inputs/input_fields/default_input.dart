import 'package:advance_app/constants.dart';
import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
            height: 40,
            child: TextField(
              style: const TextStyle(color: Colors.black),
              decoration: InputDecoration(
                hintStyle: const TextStyle(color: Colors.grey),
                hintText: "Insert your course title",
                contentPadding: const EdgeInsets.only(left:15, top:10),
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

    );
  }
}

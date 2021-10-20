import 'package:flutter/material.dart';


class ErrorInputField extends StatelessWidget {
  const ErrorInputField({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  Column(
        children: [
          SizedBox(
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
                      color: Colors.red[400]!,
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

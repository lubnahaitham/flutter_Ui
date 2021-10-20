import 'package:flutter/material.dart';

class UnderLineInputField extends StatelessWidget {
   const UnderLineInputField({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  Column(
        children: [
          SizedBox(
            child: TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(left:15, top:10),
                hintStyle: TextStyle(color: Colors.grey),
                hintText: "Insert your course title",
                border: UnderlineInputBorder(
                    borderSide: BorderSide(),
                    borderRadius: BorderRadius.circular(5)),
              ),
            ),
          ),

        ],

    );
  }
}

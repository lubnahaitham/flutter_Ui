import 'package:flutter/material.dart';

class SmallInputField extends StatelessWidget {
  SmallInputField({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
            children: [
              Container(
                height: 30,
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.grey),
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
              ),
            ],

        );
  }
}

import 'package:flutter/material.dart';

class TextAreaField extends StatefulWidget {
  const TextAreaField({Key? key}) : super(key: key);

  @override
  _TextAreaFieldState createState() => _TextAreaFieldState();
}

class _TextAreaFieldState extends State<TextAreaField> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Text Area'),
          centerTitle: true,
        ),
          body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Course Radio Button*',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),),

            TextFormField(
              style: TextStyle(color: Colors.black),
              keyboardType: TextInputType.multiline,
              maxLines: 10,
              decoration: InputDecoration(
                hintStyle: const TextStyle(color: Colors.grey),
                hintText: "Insert your course title",
                contentPadding: EdgeInsets.all(5),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5)),
              ),
            ),

            Text('Please provide a valid city.',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              )),
          ],
        ),
      )),
    );
  }
}

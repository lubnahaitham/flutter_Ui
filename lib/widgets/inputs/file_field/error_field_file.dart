import 'package:flutter/material.dart';


class ErrorFileField extends StatelessWidget {
  const ErrorFileField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
            children: [
          TextButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('No Choose file - (Pdf, Video)',
                    style: TextStyle(
                      color: Colors.red,
                    )),
                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                    ),
                    onPressed: () {},
                    child: Text('Upload File')),
              ],
            ),
            onPressed: () {},
          ),

        ]
    );
  }
}

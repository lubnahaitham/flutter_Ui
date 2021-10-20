import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DefaultFieldFile extends StatelessWidget {
  const DefaultFieldFile({Key? key}) : super(key: key);

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
                      color: Colors.blue,)),


                    ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.blue),
                        ),
                        onPressed: (){},
                        child: const Text('Upload File')),
                  ],

                ),
                onPressed: () {},
              ),


            ]
    );
  }
}

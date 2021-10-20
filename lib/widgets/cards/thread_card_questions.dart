import 'package:advance_app/widgets/cards/thread_card_questins_elements.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'default_card_elements.dart';

class ThreadCardQuestion extends StatelessWidget {
  ThreadCardQuestion({Key? key}) : super(key: key);

  final TextEditingController _title = TextEditingController();
  final TextEditingController _image = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Card(
        elevation: 4.0,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListCardQuestions(
                  image: 'assets/hd_dp.jpg',
                  columnData: {
                    "name":  'Jose Portilla',
                    "date": "Jan 15 '18 at 13:56",
                    "title1": "Lorem ipsum dolor sit amet consectetur adipisicing "
                        "elit.",
                    "title": "Lorem ipsum dolor sit amet consectetur adipisicing "
                    "elit.",
                    "content2": 'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
                    "tag": "# Developement",
                  },
                )


              ]),
        ),
      ),
    );
  }
}

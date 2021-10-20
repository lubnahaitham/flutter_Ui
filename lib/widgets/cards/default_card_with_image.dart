import 'package:advance_app/constants.dart';
import 'package:advance_app/widgets/cards/thread_card_elemnets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'default_card_elements.dart';

class DefaultImageCard extends StatelessWidget {
  DefaultImageCard({Key? key}) : super(key: key);

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
                ListCard(
                  image: 'assets/hd_dp.jpg',
                  columnData: {
                    "name":  'Jose Portilla',
                    "title2": "Jose Portilla Jose Portilla Jose",
                "content":  'Jose Portilla',
                "content2": 'lorem ipsum dolor sit amet',
                  },
                )


              ]),
        ),
      ),
    );
  }
}

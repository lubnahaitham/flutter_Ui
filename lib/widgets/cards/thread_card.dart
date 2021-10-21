import 'package:advance_app/widgets/cards/thread_card_elemnets.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class ThreadCard extends StatelessWidget {
  ThreadCard({Key? key}) : super(key: key);

  final TextEditingController _title = TextEditingController();
  final TextEditingController _subtitle = TextEditingController();
  final TextEditingController _leading = TextEditingController();
  final TextEditingController _trailing = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Card(
            elevation: 4.0,
            child: Column(
              children: [

                ListCardElement(
                  columnSubtitle:{
                    "subtitle1": "Five things I wish I knew before\n"
                        "I switched to the Apple Ecosystem.",

                  },


                  image: 'assets/hd_dp.jpg',
                  iconData: Icons.more_horiz,

                ),

              ],

            )),

      ),
    );
  }
}

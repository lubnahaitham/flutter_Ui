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
          width: 300,
          child: Card(
            elevation: 4.0,
            child: Column(children: [
                  ListCardElement(
                    columnData: {
                      "name": "Jose Portilla",
                      "date": "Jan 15 '18 at 13:56",
                      "title": "Five things I wish I "
                          "knew before I switched to the Apple Ecosystem.",
                      "content": "I made the switch "
                          "from Samsung to Apple in late 2019, I, also, "
                          "made the switch from Windows to Mac earlier this year. "
                          "There are definitely many positives in the switch,"
                          " but there are some things I wish I had known."
                          "Photo by Tianyi Ma on Unsplash",
                      "title2": "1. Not all devices play as nicely together.",
                      "content2": "Bluetooth works in most situations, regardless "
                          "of what phone you use. Earbuds pair, watches still pass some data, "
                          "but some devices just don’t play as nicely. "
                          "For example, I have a smart in-window air conditioner. "
                          "While still on Android, I had no issues pairing, updating, or "
                          "controlling it, it just works. When I switched to iOS, I was going through and pair all my smart devices, this air conditioner though it supports HomeKit has issues. Frequent communication drops, updating just doesn’t work, and while the control scheme is much nicer in the Home app on iPhone, the communication drops make it impractical. This is an isolated issue, 90% of my devices paired up with no issues, "
                          "but a few just handle things differently.",
                      "tag": "#Development"
                    },
                    iconData: Icons.check_circle,
                    image: 'assets/hd_dp.jpg',
                  ),
                ],
              )
          )),
    );
  }
}

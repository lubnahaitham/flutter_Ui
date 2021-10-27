import 'package:advance_app/widgets/cards/default_card.dart';
import 'package:advance_app/widgets/cards/review_card.dart';
import 'package:advance_app/widgets/cards/side_card.dart';
import 'package:advance_app/widgets/cards/thread_card.dart';
import 'package:advance_app/widgets/cards/thread_card_questions.dart';
import 'package:advance_app/widgets/cards/thread_listing.dart';
import 'package:flutter/material.dart';

import 'default_card_with_image.dart';

class ListCards extends StatelessWidget {
  const ListCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      DefaultCard(),

      const SideCard(),

      const ThreadCard(image: 'assets/hd_dp.jpg',
        iconData: Icons.more_horiz,
        columnSubtitle: {"subtitle": "I made the switch from Samsung to\n"
    "Apple in late 2019, I, also, made the \nswitch "
    "from Windows to Mac earlier \nthis year."
    "There are definitely many positives in the switch,"
    " but there are\nsome things I wish I had known.\n"
    "Photo by Tianyi Ma on Unsplash"},
        columnData: {"title": "Jose Portilla"},
        ),

      const ReviewCard(),

      const ThreadListing( columnSubtitle: {"subtitle1": "Lorem ipsum Lorem Ipsum",
        "title": "Lorem Ipsum Lorem Ipsum"},
        columnData1: {"subtitle1": "Jose Portilla"},
        columnData: {},
        iconData: Icons.check_circle,),
      DefaultImageCard(),
      const ThreadCardQuestion(),
    ]);
  }
}

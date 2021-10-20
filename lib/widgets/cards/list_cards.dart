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
      SideCard(),
      ThreadCard(),
      ReviewCard(),
      ThreadListing(),
      DefaultImageCard(),
      ThreadCardQuestion(),
    ]);
  }
}

import 'package:advance_app/constants.dart';
import 'package:advance_app/widgets/cards/default_card_elments.dart';
import 'package:flutter/material.dart';

class DefaultCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: DefaultCardElements(

        iconData: Icons.check_circle,
        columnData: { "title2": "This a card title"
         },
        columnSubtitle: {"name": "Lorem ipsum dolor sit amet, consectetur\nadipisicing elit."
            "Ab accusamus accusantium\ncommodi deserunt,"
            'distinctio eos exercitationem\nfugit hic, itaque nisi'
            'quisquam ullam vero!\n'
            'Cumque ducimus eum fuga nesciunt nulla porro?'},)
    );
  }
}

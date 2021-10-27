import 'package:advance_app/widgets/cards/side_card_elements.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class SideCard extends StatelessWidget {
  const SideCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: SideCardElements(
          columnData: {"name": "this is a card title"},
          columnSubtitle: {"name": "Lorem ipsum dolor sit amet, consectetur\nadipisicing elit."
              "Ab accusamus accusantium\ncommodi deserunt,"
              'distinctio eos exercitationem\nfugit hic, itaque nisi'
              'quisquam ullam vero!\n'
              'Cumque ducimus eum fuga nesciunt nulla porro?'},
          iconData: Icons.check_circle,
          image: 'assets/hd_dp.jpg',
        )
      ),
    );
  }
}

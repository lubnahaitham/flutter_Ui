import 'package:advance_app/constants.dart';
import 'package:advance_app/widgets/cards/side_card.dart';
import 'package:flutter/material.dart';

class DefaultCard extends StatelessWidget {
  const DefaultCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Card(
        elevation: 4.0,
        child: Padding(
          padding: EdgeInsets.all(10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
              child: Row(
                children: [
                  Text(
                    'This is a card title',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  Icon(Icons.check_circle,
                      color: PRIMARY_COLOR,
                      size: 20),
                ],
              ),
            ),
            Text(
                'Lorem ipsum dolor sit amet, consectetur\nadipisicing elit.Ab accusamus accusantium\ncommodi deserunt, '
                'distinctio eos exercitationem\nfugit hic, itaque nisi'
                'quisquam ullam vero!\n'
                'Cumque ducimus eum fuga nesciunt nulla porro?',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.black,
                )),

          ]),
        ),
      ),
    );
  }
}

import 'package:advance_app/widgets/cards/thread_card_elemnets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReviewCard extends StatefulWidget {
  const ReviewCard({Key? key}) : super(key: key);

  @override
  _ReviewCardState createState() => _ReviewCardState();
}

class _ReviewCardState extends State<ReviewCard> {
  var rating = 0.0;

  final TextEditingController _title = TextEditingController();
  final TextEditingController _subtitle = TextEditingController();
  final TextEditingController _leading = TextEditingController();
  final TextEditingController _trailing = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Card(
        elevation: 4.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [

          ListCardElement(
            columnData: {
              "name": "Jose Portilla",
              "date": "Jan 15 '18 at 13:56",
              "content": "Lorem ipsum, dolor sit amet consectetur "
                  "adipisicing elit. Quibusdam sed similique quos illo nam sint aut "
                  "laudantium enim iste quod ad "
                  "obcaecati error quisquam sequi eos, culpa, "
                  "neque officiis modi?",
            },
            iconData: Icons.check_circle,
            image: 'assets/hd_dp.jpg',
          ),

        ]),
      ),
    );
  }
}

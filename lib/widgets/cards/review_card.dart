import 'package:advance_app/widgets/cards/rating.dart';
import 'package:advance_app/widgets/cards/side_card_elements.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class ReviewCard extends StatefulWidget {
  const ReviewCard({Key? key}) : super(key: key);

  @override
  _ReviewCardState createState() => _ReviewCardState();
}

class _ReviewCardState extends State<ReviewCard> {
  double rating = 3.5;

  @override
  Widget build(BuildContext context) {
    return Card(
          elevation: 4.0,
          child: Column(
            children: [
              ListTile(
                contentPadding: EdgeInsets.all(5),
                title: Padding(
                  padding: EdgeInsets.fromLTRB(0, 15, 0, 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Jose Portilla',
                            style: TextStyle(
                              fontSize: 18,
                              color: PRIMARY_COLOR,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                  Text("Jan 15 '18 at 13:56",
                    style: TextStyle(
                        fontSize: 12.5,
                        color: Colors.grey[700]),),
                          Row(
                            children: [
                            StarRating(
                            rating: rating,
                            onRatingChanged:
                                (rating) => setState(() => this.rating = rating), color: Colors.amber,
                          ),
                            ],
                          ),
                        ],),

                      const Icon(Icons.check_circle,
                          color: PRIMARY_COLOR, size: 20),

                    ],
                  ),
                ),


                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        'Lorem ipsum dolor sit amet, consectetur\nadipisicing elit.Ab accusamus accusantium\ncommodi deserunt, '
                            'distinctio eos exercitationem\nfugit hic, itaque nisi'
                            'quisquam ullam vero!\n'
                            'Cumque ducimus eum fuga nesciunt nulla porro?',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.black,
                        )),
                  ],
                ),

                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/hd_dp.jpg'),
                ),
                trailing: Icon(Icons.more_horiz, color:Colors.black),
              ),
            ],
          ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class CourseCard extends StatefulWidget {
  const CourseCard({Key? key}) : super(key: key);

  @override
  _CourseCardState createState() => _CourseCardState();
}

class _CourseCardState extends State<CourseCard> {
  bool _link = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 415,
      width: 250,
      child:
      Card(
        elevation: 2.0,
        // shadowColor: Colors.blueGrey,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          // side: BorderSide(color: Colors.blueGrey, width: 1),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          children: [
            SizedBox(
              width: 250,
              child: Image.asset(
                'assets/get_img.jpg',
                fit: BoxFit.cover,
              ),
            ),

            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "1 subscriber 4 minutes",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),

                  Wrap(
                    children: const [
                      Icon(
                        Icons.star,
                        size: 15.0,
                        color: Colors.amber,
                      ),
                      Text('4.5',
                          style:
                          TextStyle(color: Colors.amber, fontSize: 15)),
                    ],
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 10),
              child:Row(
                children: [
                  Text('Complete Python Bootcamp1',
                      style: TextStyle(
                          color: SECONDARY_COLOR,
                          fontWeight: FontWeight.bold)
                  ),

                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.fromLTRB(10, 25, 0, 0),
              child:Row(
                children: [
                  Text('Web Development | Python',
                      style: TextStyle(
                          color: Colors.grey)
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    child: Text(
                      'Enroll',
                      style:
                      TextStyle(color: SECONDARY_COLOR,
                          fontWeight: FontWeight.normal),
                    ),
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: PRIMARY_COLOR, width: 1),
                      backgroundColor: _link  ? SOFT_PRIMARY : Colors.white,

                    ),
                    onPressed: () => setState(() => _link  = !_link),
                  ),
        Wrap(
          children: const [
            Icon(
              Icons.favorite,
              size: 15.0,
              color: Colors.red,
            ),
          ])


                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}

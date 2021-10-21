import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class ThreadCardQuestion extends StatelessWidget {
  ThreadCardQuestion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Card(
        elevation: 4.0,
        child: Padding(
          padding: EdgeInsets.all(10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Icon(Icons.more_horiz)],
            ),
            CircleAvatar(
              radius: 30.0,
              backgroundImage: AssetImage('assets/hd_dp.jpg'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Jose Portilla',
              style: TextStyle(
                color: PRIMARY_COLOR,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Jan 15 '18 at 13:56",
              style: TextStyle(
                fontSize: 12,
              ),
            ),

            SizedBox(
              height: 15,
            ),
            Text(
              'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
              style: TextStyle(
                color: PRIMARY_COLOR,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
              style: TextStyle(
                color: PRIMARY_COLOR,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

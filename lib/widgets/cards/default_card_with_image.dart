import 'package:advance_app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class DefaultImageCard extends StatelessWidget {
  DefaultImageCard({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Card(
        elevation: 4.0,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage('assets/hd_dp.jpg'),
                ),
                SizedBox(height: 5,),

                Text('Jose Portilla',
                style: TextStyle(
                  color: PRIMARY_COLOR,
                  fontSize: 16,
                ),),

                SizedBox(height: 15,),

                Text('Jose Portilla Jose Portilla',
                  style: TextStyle(
                  ),),

                SizedBox(height: 15,),

                Text('Jose Portilla',
                  style: TextStyle(
                  ),),

                SizedBox(height: 15,),

                Text('lorem ipsum dolor sit amet',
                  style: TextStyle(
                  ),),


              ]),
        ),
      ),
    );
  }
}

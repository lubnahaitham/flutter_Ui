
import 'package:flutter/material.dart';

import '../../constants.dart';

class ListCardQuestions extends StatelessWidget {
  final Map<String, String> columnData;
  final String image;


  const ListCardQuestions(
      {Key? key,
        required this.columnData,
        required this.image,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 25.0,
            backgroundImage: AssetImage(image),
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: columnData.keys.map((key) {
              return Text(
                columnData[key]!,
                style: TextStyle(
                    color: key == 'name' || key == 'title' || key == 'title1'
                        ? PRIMARY_COLOR
                        : Colors.black,
                    fontWeight: key == 'name' || key == 'title'
                        ? FontWeight.bold
                        : FontWeight.normal
                ),
              );
            }).toList(),


          ),


        ]);


  }
}

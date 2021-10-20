import 'package:flutter/material.dart';

import '../../constants.dart';

class ListCardElement extends StatelessWidget {
  final Map<String, String> columnData;
  final String image;
  final IconData iconData;


  const ListCardElement(
      {Key? key,
      required this.columnData,
      required this.image,
        required this.iconData,
     })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   ListTile(
      title:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: columnData.keys.map((key) {
          return Text(
            columnData[key]!,
            style: TextStyle(
             color: key == 'name' || key == 'title' || key == 'title2'
                  ? PRIMARY_COLOR
                 : Colors.black,
              fontWeight: key == 'name' || key == 'title'
                  ? FontWeight.bold
                  : FontWeight.normal
            ),
          );
        }).toList(),
      ),

      contentPadding: const EdgeInsets.all(10),
      leading: CircleAvatar(
        radius: 25.0,
        backgroundImage: AssetImage(image),
      ),
      trailing:Row(
        crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(iconData,
      color: PRIMARY_COLOR),
            Icon(Icons.more_horiz,
            color: Colors.black,)
      ]),

    );
  }
}

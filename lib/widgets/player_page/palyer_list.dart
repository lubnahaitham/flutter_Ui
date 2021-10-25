import 'package:flutter/material.dart';

import '../../constants.dart';

class PlayerList extends StatelessWidget {
  final Map<String, String> columnData;
  final Widget leading;

  const PlayerList(
      {Key? key,
      required this.columnData,
      required this.leading})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: columnData.keys.map((key) {
            return Text(
              columnData[key]!,
              style: TextStyle(
                fontWeight: key == 'name' || key == 'date'
                    ? FontWeight.bold
                    : FontWeight.normal,
              ),
            );
          }).toList(),
        ),
      leading: leading,

        );

  }
}

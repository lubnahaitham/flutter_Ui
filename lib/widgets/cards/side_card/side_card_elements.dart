import 'package:advance/new_ui/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SideCardElements extends StatelessWidget {
  final Map<String, String> columnData;
  final Map<String, String> columnSubtitle;
  final String image;
  final IconData iconData;

  const SideCardElements({
    Key? key,
    required this.columnData,
    required this.columnSubtitle,
    required this.image,
    required this.iconData,
  }) : super(key: key);

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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: columnData.keys.map((key) {
                        return Text(
                          columnData[key]!,
                          style: TextStyle(
                              color: key == 'subtitle1' || key == 'subtitle2'
                                  ? PRIMARY_COLOR
                                  : Colors.black,
                              fontWeight:
                                  key == 'subtitle1' || key == 'subtitle2'
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                              fontSize: key == 'subtitle1' || key == 'subtitle2'
                                  ? 19
                                  : 15),
                        );
                      }).toList(),
                    ),
                    Icon(iconData, color: PRIMARY_COLOR, size: 25),
                  ],
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: columnSubtitle.keys.map((key) {
                      return Text(
                        columnSubtitle[key]!,
                        style: TextStyle(
                            color: key == 'subtitle1' || key == 'subtitle2'
                                ? PRIMARY_COLOR
                                : Colors.black,
                            fontWeight:
                            key == 'subtitle1' || key == 'subtitle2'
                                ? FontWeight.bold
                                : FontWeight.normal,
                            fontSize: key == 'subtitle1' || key == 'subtitle2'
                                ? 19
                                : 15),
                      );
                    }).toList(),
                  ),
                ],
              ),

              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(image),
              ),
            ),
          ],
        ));
  }
}

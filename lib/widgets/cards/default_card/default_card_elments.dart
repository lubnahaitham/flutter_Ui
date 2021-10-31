import 'package:advance/new_ui/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class DefaultCardElements extends StatelessWidget {
  final Map<String, String> columnData;
  final Map<String, String> columnSubtitle;
  final IconData iconData;

  const DefaultCardElements({
    Key? key,
    required this.columnData,
    required this.columnSubtitle,
    required this.iconData,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: Padding(
        padding: EdgeInsets.all(10),
        child:
        Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: columnData.keys.map((key) {
                      return Text(
                        columnData[key]!,
                        style: TextStyle(
                            color: key == 'title' || key == 'title1'
                                ? PRIMARY_COLOR
                                : Colors.black,
                            fontWeight: key == 'title' || key == 'title1'
                                ? FontWeight.bold
                                : FontWeight.normal,
                            fontSize: key == 'title' || key == 'title1'
                                ? 19
                                : 15),
                      );
                    }).toList(),
                  ),

                  Icon(iconData,
                  color: PRIMARY_COLOR)
                ],
              ),
              Row(
                children: columnSubtitle.keys.map((key) {
                  return Text(
                    columnSubtitle[key]!,
                    style: TextStyle(
                        color: key == 'title' || key == 'title1'
                            ? PRIMARY_COLOR
                            : Colors.black,
                        fontWeight: key == 'title' || key == 'title1'
                            ? FontWeight.bold
                            : FontWeight.normal,
                        fontSize: key == 'title' || key == 'title1'
                            ? 19
                            : 15),
                  );
                }).toList(),
              )


            ]),
      ),
    );

  }
}

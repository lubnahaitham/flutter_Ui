import 'package:advance_app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThreadListing extends StatelessWidget {
  final Map<String, String> columnData;
  final Map<String, String> columnData1;
  final Map<String, String> columnSubtitle;
  final IconData iconData;

  const ThreadListing({
    Key? key,
    required this.columnData,
    required this.columnData1,
    required this.columnSubtitle,
    required this.iconData,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: columnData.keys.map((key) {
                return Text(
                  columnData[key]!,
                  style: TextStyle(
                      color: key == 'title1' || key == 'title2'
                          ? PRIMARY_COLOR
                          : Colors.black,
                      fontWeight:
                      key == 'title1' || key == 'title2'
                          ? FontWeight.bold
                          : FontWeight.normal,
                      fontSize: key == 'title1' || key == 'title2'
                          ? 19
                          : 15),
                );
              }).toList(),
            ),

            const SizedBox(height: 15,),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                            : 15)
                );
              }).toList(),
            ),


            SizedBox(height: 15,),


            Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: columnData1.keys.map((key) {
                      return Text(
                        columnData1[key]!,
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
                  Icon(iconData,
                      color: PRIMARY_COLOR,
                      size: 15),
                ]),


          ],
        ),
      ),
    );


  }
}

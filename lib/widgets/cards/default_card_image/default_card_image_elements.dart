import 'package:advance/new_ui/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class DefaultCardImageElements extends StatelessWidget {
  final Map<String, String> columnData;
  final Map<String, String> columnSubtitle;
  final String image;

  const DefaultCardImageElements({
    Key? key,
    required this.columnData,
    required this.columnSubtitle,
    required this.image,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 4.0,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage(image),
              ),
              SizedBox(height: 5,),

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


              Column(
                children: columnSubtitle.keys.map((key) {
                  return Text(
                    columnSubtitle[key]!,
                    style: TextStyle(
                        color: key == 'subtitle' || key == 'subtitle1'
                            ? PRIMARY_COLOR
                            : Colors.black,
                        fontWeight: key == 'subtitle' || key == 'subtitle1'
                            ? FontWeight.bold
                            : FontWeight.normal,
                        fontSize: key == 'subtitle' || key == 'subtitle1'
                            ? 19
                            : 15),
                  );
                }).toList(),
              ),

            ]),
      ),
    );
  }
}

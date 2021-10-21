import 'package:flutter/material.dart';

import '../../constants.dart';

class ListCardElement extends StatelessWidget {
  // final Map<String, String> columnData;
  final Map<String, String> columnSubtitle;
  final String image;
  final IconData iconData;

  const ListCardElement({
    Key? key,
    // required this.columnData,
    required this.columnSubtitle,
    required this.image,
    required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(5),
      title: Padding(
        padding: EdgeInsets.fromLTRB(0, 21, 0, 10),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Text('Jose Portilla',
                  style: TextStyle(
                    fontSize: 18,
                    color: PRIMARY_COLOR,
                    fontWeight: FontWeight.bold,
                  ),),
                  // Row(
                    // children: columnData.keys.map((key) {
                    //   return Text(
                    //     columnData[key]!,
                    //     style: TextStyle(
                    //       color: key == 'name' || key == 'title'
                    //           ? PRIMARY_COLOR
                    //           : Colors.black,
                    //       fontWeight: key == 'name' || key == 'title'
                    //           ? FontWeight.bold
                    //           : FontWeight.normal,
                    //       fontSize: key == 'name' || key == 'title'
                    //           ? 18 : 15),
                    //   );
                    // }).toList(),
                  // ),
                  Text("Jan 15 '18 at 13:56",
                  style: TextStyle(
                    fontSize: 12.5,
                  color: Colors.grey[700]),),
                ],
              ),
              Icon(Icons.check_circle, color: PRIMARY_COLOR, size: 20),

        ]),
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
                    fontWeight: key == 'subtitle1' || key == 'subtitle2'
                        ? FontWeight.bold
                        : FontWeight.normal,
                    fontSize: key == 'subtitle1' || key == 'subtitle2'
                        ? 19
                        : 15),
              );
            }).toList(),
          ),

          SizedBox(height: 10,),
          Text("I made the switch from Samsung to\n"
          "Apple in late 2019, I, also, made the \nswitch "
              "from Windows to Mac earlier \nthis year."
              "There are definitely many positives in the switch,"
              " but there are\nsome things I wish I had known.\n"
              "Photo by Tianyi Ma on Unsplash"),

          SizedBox(height: 10,),
          Text('1. Not all devices play as nicely together.',
          style:TextStyle(
            color: PRIMARY_COLOR,
            fontSize: 20,
            fontStyle: FontStyle.italic,
          )),

          SizedBox(height: 10,),
          Text('Bluetooth works in most situations, regardless of what phone you use.'
              ' Earbuds pair, watches still pass some data, '
              'but some devices just don’t play as nicely. For example, '
              'I have a smart in-window air conditioner. While still on Android, '
              'I had no issues pairing, updating, or controlling it, it just works.'
              ' When I switched to iOS, I was going through and pair all my smart devices, this air conditioner though it supports HomeKit has issues. '
              'Frequent communication drops, updating just doesn’t work,'
              ' and while the control scheme is much nicer in the Home app on iPhone,'
              ' the communication drops make it impractical. This is an isolated issue,'
              ' 90% of my devices paired up with no issues, '
              'but a few just handle things differently.'),

          SizedBox(height: 10,),
          Text('#Development',
              style:TextStyle(
                color: Colors.black,
                fontSize: 16,
              ))
        ],
      ),


      leading: CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage(image),
      ),
      trailing: Icon(
        iconData,
        color: Colors.black,
      ),
    );
  }
}

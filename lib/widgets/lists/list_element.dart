import 'package:flutter/material.dart';

class ListElement extends StatelessWidget {
  final Map<String, String> columnData;
  final String image;
  final Function onChange;
  final Function? onTap;

  const ListElement(
      {Key? key,
      required this.columnData,
      required this.image,
      required this.onChange,
      this.onTap})
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


      leading: CircleAvatar(
        radius: 25.0,
        backgroundImage: AssetImage(image),
      ),
      trailing: Checkbox(
        value: false,
        onChanged: (value) => onChange,
      ),
      onTap: () => onTap,
    );
  }
}

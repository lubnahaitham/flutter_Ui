import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  final String title;
  final Widget field;
  final String errorMessage;
  final TextStyle titleTextStyle;
  final TextStyle errorTextStyle;

  const InputWidget({
    Key? key,
    required this.title,
    required this.field,
    required this.errorMessage,
    required this.titleTextStyle,
    required this.errorTextStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(4),
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(5),
        child: Text(
          title,
          style: titleTextStyle,
        ),
        ),
        field,
        Container(
        padding: EdgeInsets.all(5),
        child: Text(
          errorMessage,
          style: errorTextStyle,
        ),
        ),
      ],
    ),
    );
  }
}

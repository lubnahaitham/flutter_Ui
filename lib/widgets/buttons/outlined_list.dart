import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'outlined_button.dart';
import 'outlined_links.dart';

class OutlinedList extends StatelessWidget {
  const OutlinedList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      ListView(
          children: const [
        DefaultOutlinedButton(),
        OutlinedLinks(),
      ]),
    );
  }
}

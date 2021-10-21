import 'package:flutter/material.dart';

import 'default_buttons.dart';
import 'default_links.dart';

class ListDefaultButtons extends StatelessWidget {
  const ListDefaultButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        DefaultButton(),
        DefaultLinks(),

      ]),
    );
  }
}

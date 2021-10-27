import 'package:advance_app/widgets/buttons/switch/switch.dart';
import 'package:flutter/material.dart';

import 'default/accent.dart';
import 'default/accent_size.dart';
import 'default/danger.dart';
import 'default/default.dart';
import 'default/default_with_icon.dart';
import 'default/disabled_links.dart';
import 'default/info.dart';
import 'default/info_size.dart';
import 'default/primary.dart';
import 'default/primary_links.dart';
import 'default/primary_size.dart';
import 'default/secondary.dart';
import 'default/secondary_size.dart';
import 'default/success.dart';
import 'default/success_size.dart';
import 'default/warning.dart';

class ListDefaultButtons extends StatelessWidget {
  const ListDefaultButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Row(
          children: [
            Default(),
            Primary(),
            Accent(),
          ],
        ),
        Row(
          children: [
            Secondary(),
            Success(),
            Info(),
          ],
        ),
        Row(
          children: [
            Warning(),
            Danger(),
            Disabled(),
          ],
        ),
        Row(
          children: const [
            PrimaryLinks(),
            SwitchButton(),
            PrimarySize(),
          ],
        ),
        Row(
          children: [
            SecondarySize(),
            AccentSize(),
          ],
        ),
        Row(
          children: [
            SuccessSize(),
            InfoSize(),
          ],
        ),
        DefaultIcon(),
      ]),
    );
  }
}

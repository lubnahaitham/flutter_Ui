import 'package:advance/new_ui/widgets/buttons/outlined/accent_outlined.dart';
import 'package:advance/new_ui/widgets/buttons/outlined/danger_outlined.dart';
import 'package:advance/new_ui/widgets/buttons/outlined/default_with_icon.dart';
import 'package:advance/new_ui/widgets/buttons/outlined/disabled_outlined.dart';
import 'package:advance/new_ui/widgets/buttons/outlined/info_outlined.dart';
import 'package:advance/new_ui/widgets/buttons/outlined/primary_outlined.dart';
import 'package:advance/new_ui/widgets/buttons/outlined/secondary_outlined.dart';
import 'package:advance/new_ui/widgets/buttons/outlined/success_outlined.dart';
import 'package:advance/new_ui/widgets/buttons/outlined/warning_outlined.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'outlined/default1_links.dart';
import 'outlined/default_outlined.dart';
import 'outlined/default_links.dart';
import 'outlined/primary_links.dart';

class OutlinedList extends StatelessWidget {
  const OutlinedList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Row(
          children: const [
            DefaultOutlined(),
            DefaultLinks(),
            AccentOutlined(),
          ],
        ),
        Row(
          children: const [
            PrimaryOutlined(),
            SecondaryOutlined(),
            SuccessOutlined(),
          ],
        ),
        Row(
          children: const [
            InfoOutlined(),
            WarningOutlined(),
            DangerOutlined(),
          ],
        ),
        Row(
          children: const [
            DisabledOutlined(),
            DefaultLinks1(),
            PrimaryLinksOutlined()],
        ),
        Row(
          children: const [
            DefaultIConOutlined(),
          ],
        )
      ]),
    );
  }
}

import 'package:advance_app/widgets/buttons/text_buttons/accent.dart';
import 'package:advance_app/widgets/buttons/text_buttons/accent_icon.dart';
import 'package:advance_app/widgets/buttons/text_buttons/danger.dart';
import 'package:advance_app/widgets/buttons/text_buttons/default.dart';
import 'package:advance_app/widgets/buttons/text_buttons/group_buttons1.dart';
import 'package:advance_app/widgets/buttons/text_buttons/iconcloud.dart';
import 'package:advance_app/widgets/buttons/text_buttons/iconhome.dart';
import 'package:advance_app/widgets/buttons/text_buttons/iconplus.dart';
import 'package:advance_app/widgets/buttons/text_buttons/iconrounded.dart';
import 'package:advance_app/widgets/buttons/text_buttons/group_buttons2.dart';
import 'package:advance_app/widgets/buttons/text_buttons/info.dart';
import 'package:advance_app/widgets/buttons/text_buttons/primary.dart';
import 'package:advance_app/widgets/buttons/text_buttons/secondary.dart';
import 'package:advance_app/widgets/buttons/text_buttons/success.dart';
import 'package:advance_app/widgets/buttons/text_buttons/warning.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextButtons extends StatelessWidget {
  const TextButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Row(children: const [
          DefaultText(),
          PrimaryText(),
          AccentText(),
          SecondaryText(),
        ]),
        Row(
          children: const [

            SuccessText(),
            InfoText(),
            WarningText(),
          ],
        ),

        Row(children: const [

          DangerText(),
          AccentIconText(),
        ],),
        Row(
          children: const [
            IconHome(),
            IconPlus(),
            IconCloud(),
            IconRounded(),
          ],
        ),
        const GroupButton(),
        const GroupButton2(),



      ]),
    );
  }
}

import 'package:advance_app/widgets/buttons/rounded/accent_rounded.dart';
import 'package:advance_app/widgets/buttons/rounded/accent_size.dart';
import 'package:advance_app/widgets/buttons/rounded/accent_with_icon.dart';
import 'package:advance_app/widgets/buttons/rounded/danger_rounded.dart';
import 'package:advance_app/widgets/buttons/rounded/default_rounded.dart';
import 'package:advance_app/widgets/buttons/rounded/disabled_rounded.dart';
import 'package:advance_app/widgets/buttons/rounded/info_size.dart';
import 'package:advance_app/widgets/buttons/rounded/primary_rounded.dart';
import 'package:advance_app/widgets/buttons/rounded/primary_size.dart';
import 'package:advance_app/widgets/buttons/rounded/secondary_rounded.dart';
import 'package:advance_app/widgets/buttons/rounded/secondary_size.dart';
import 'package:advance_app/widgets/buttons/rounded/success_rounded.dart';
import 'package:advance_app/widgets/buttons/rounded/info_rounded.dart';
import 'package:advance_app/widgets/buttons/rounded/success_size.dart';
import 'package:advance_app/widgets/buttons/rounded/warning_rounded.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListRoundedButton extends StatelessWidget {
  const ListRoundedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Row(children: const [
          DefaultRounded(),
          PrimaryRounded(),
          InfoRounded(),
        ]),
        Row(
          children: const [
            SecondaryRounded(),
            AccentRounded(),
            SuccessRounded(),
          ],
        ),
        Row(
          children: const [
            DangerRounded(),
            WarningRounded(),
            PrimarySizeRounded(),
          ],
        ),
        Row(
          children: const [SecondarySizeRounded(), AccentSizeRounded()],
        ),
        Row(
          children: [
            SuccessSizeRounded(),
            InfoSizeRounded(),
          ],
        ),
        Row(
          children: [
            AccentIconRounded(),
            DisabledRounded(),
          ],
        )
      ]),
    );
  }
}

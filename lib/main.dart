import 'package:advance_app/widgets/cards/list_cards.dart';
import 'package:advance_app/widgets/List_of_all_inputs.dart';
import 'package:advance_app/widgets/inputs/input_fields/list_inputs.dart';
import 'package:flutter/material.dart';
import 'package:advance_app/pages/home.dart';

void main() =>
    runApp
(
MaterialApp
(
  routes: {
    '/': (context) => const Home(),
    'card/': (context) => const ListCards(),
    'field/': (context) => const ListAllInputs(),
  },));


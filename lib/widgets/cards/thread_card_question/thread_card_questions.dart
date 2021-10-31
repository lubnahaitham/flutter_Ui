import 'package:advance/new_ui/widgets/cards/thread_card_question/thread_card_question_elements.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ThreadCardQuestion extends StatelessWidget {
  const ThreadCardQuestion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const ThreadCardQuestionElements(
        image: 'assets/hd_dp.jpg',
        columnSubtitle: {"title3": 'Jose Portillla',
        "title4": "lorem ipsum"},
        columnData: {"title": "Jose Portilla"},

    );
  }
}

import 'package:advance_app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'default_card_image_elements.dart';


class DefaultImageCard extends StatelessWidget {
  DefaultImageCard({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return
        DefaultCardImageElements(
          image: 'assets/hd_dp.jpg',
          columnSubtitle: {"title3": 'Jose Portillla',
          "title4": "lorem ipsum"},
          columnData: {},



    );
  }
}

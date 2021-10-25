import 'package:advance_app/constants.dart';
import 'package:advance_app/widgets/page_layout/search_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'course_card.dart';
import 'message_icon.dart';

class PageLayout extends StatefulWidget {
  const PageLayout({Key? key}) : super(key: key);

  @override
  _PageLayoutState createState() => _PageLayoutState();
}

class _PageLayoutState extends State<PageLayout> {
  Icon searchIcon = Icon(Icons.search);
  Widget searchText = Text('fff');

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: PRIMARY_COLOR,
          leading: IconButton(onPressed: () {},
              icon: Icon(Icons.menu, size: 30)),
          title: Row(
            children: [
              Image.asset(
                "assets/Etqadem_Icon_Yellow.png",
                width: 25.5,
              ),
              SizedBox(width: 8,),
              IconButton(
                onPressed: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => SearchPage())),
                icon: const Icon(Icons.search),
                color: Colors.grey,
              iconSize: 25.5,),
            ],
          ),
          titleSpacing: 0,

          actions: [
            Message(),
          ],
        ),
        body: CourseCard(),
      ),
    );
  }
}

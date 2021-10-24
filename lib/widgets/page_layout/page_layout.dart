import 'package:advance_app/constants.dart';
import 'package:advance_app/widgets/page_layout/search_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
           title: IconButton(
               onPressed: () => Navigator.of(context)
                   .push(MaterialPageRoute(builder: (_) => SearchPage())),
               icon: const Icon(Icons.search), color: Colors.grey,),

            leading: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(child:
                IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
                ),
              Image.asset("assets/Etqadem_Icon_Yellow.png",
              width: 25,)

              ],
            ),
          actions: [
            Message()
          ],

            ),
        body: Container(),
      ),
    );
  }
}

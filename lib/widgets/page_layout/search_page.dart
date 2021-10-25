import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: PRIMARY_COLOR,
          title: SizedBox(
            width: 350,
            height: 85,
            child:Padding(
            padding: EdgeInsets.all(25),
            child:
            TextField(
              decoration: InputDecoration(
                hintText: "Search for Tuts Videos, Tutors",
                hintStyle: TextStyle(
                  fontSize: 15,
                      color: Colors.grey,
                ),
                contentPadding: EdgeInsets.all(5),
                fillColor: Colors.white,
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 1.0),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 1.0),
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
          ),
        ),
        ),
      ),
    );
  }
}

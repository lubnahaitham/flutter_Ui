import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Message extends StatefulWidget {
  const Message({Key? key}) : super(key: key);

  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.email_outlined),
            iconSize: 25.5,
          ),
          IconButton(
            onPressed: () {
              setState(() {
              });
            },
            icon: Icon(Icons.notifications_none_outlined),
            iconSize: 25.5,
          ),
          InkWell(
            onTap: () {},
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/hd_dp.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}

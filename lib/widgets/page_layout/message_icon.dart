import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Message extends StatefulWidget {
  const Message({Key? key}) : super(key: key);

  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
  Icon customIcon = const Icon(Icons.email_outlined);
  Icon billIcon = const Icon(Icons.notifications_none_outlined);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            setState(() {
              if (customIcon.icon == Icons.email_outlined) {
                // Perform set of instructions.
              } else {
                customIcon = const Icon(Icons.email_outlined);
              }
            });
          },
          icon: customIcon,
        ),

        IconButton(
          onPressed: () {
            setState(() {
              if (billIcon.icon == Icons.notifications_none_outlined) {
                // Perform set of instructions.
              } else {
                billIcon = const Icon(Icons.notifications_none_outlined);
              }
            });
          },
          icon: billIcon,
        ),
        InkWell(
          onTap: (){},
          child: CircleAvatar(
            radius: 25.0,
            backgroundImage: AssetImage('assets/hd_dp.jpg'),
        )

        )
      ],
    );
  }
}

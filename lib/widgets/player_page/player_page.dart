import 'package:advance_app/widgets/player_page/palyer_list.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class Player extends StatefulWidget {
  const Player({Key? key}) : super(key: key);

  @override
  _PlayerState createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  final TextEditingController _title = TextEditingController();
  final TextEditingController _subtitle = TextEditingController();
  final TextEditingController _leading = TextEditingController();

  bool checked = true;

  void getCircleCheckBoxField(bool value) {
    if (checked == false) {
      // Put your code here which you want to execute on CheckBox Checked.
      setState(() {
        checked = true;
      });
    } else {
      // Put your code here which you want to execute on CheckBox Un-Checked.
      setState(() {
        checked = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Padding(
        padding: EdgeInsets.all(10),
        child:
      ListView(children: [
        PlayerList(
          columnData: const {
            "name": "Jose Portilla",
            "title": "Lorem ipsum",
          },
          leading: Container(
            height: 150,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/get_img.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 50, 20),
              child: Checkbox(
                activeColor: SECONDARY_COLOR,
                checkColor: Colors.white,
                value: checked,
                shape: CircleBorder(),
                onChanged: (value) {
                  getCircleCheckBoxField(value!);
                },
                tristate: false,
              ),
            ),
          ),
        ),
        const Divider(
          height: 10,
          indent: 100,
          thickness: 1,
        ),

        PlayerList(
          columnData: const {
            "name": "Jose Portilla",
            "title": "Lorem ipsum",
          },
          leading: Container(
            height: 150,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/get_img.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 50, 20),
              child: Checkbox(
                activeColor: SECONDARY_COLOR,
                checkColor: Colors.white,
                value: checked,
                shape: CircleBorder(),
                onChanged: (value) {
                  getCircleCheckBoxField(value!);
                },
                tristate: false,
              ),
            ),
          ),
        ),

        const Divider(
          height: 10,
          indent: 100,
          thickness: 1,
        ),

        PlayerList(
          columnData: const {
            "name": "Jose Portilla",
            "title": "Lorem ipsum",
          },
          leading: Container(
            height: 150,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/get_img.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 50, 20),
              child: Checkbox(
                activeColor: SECONDARY_COLOR,
                checkColor: Colors.white,
                value: checked,
                shape: CircleBorder(),
                onChanged: (value) {
                  getCircleCheckBoxField(value!);
                },
                tristate: false,
              ),
            ),
          ),
        ),

        const Divider(
          height: 10,
          indent: 100,
          thickness: 1,
        ),

        PlayerList(
          columnData: const {
            "name": "Jose Portilla",
            "title": "Lorem ipsum",
          },
          leading: Container(
            height: 150,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/get_img.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 50, 20),
              child: Checkbox(
                activeColor: SECONDARY_COLOR,
                checkColor: Colors.white,
                value: checked,
                shape: CircleBorder(),
                onChanged: (value) {
                  getCircleCheckBoxField(value!);
                },
                tristate: false,
              ),
            ),
          ),
        ),

        const Divider(
          height: 10,
          indent: 100,
          thickness: 1,
        ),
      ]),
      ),
    );
  }
}

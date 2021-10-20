import 'package:flutter/material.dart';

import '../../constants.dart';

class SideCard extends StatelessWidget {
  const SideCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
          width: double.infinity,
          child: Card(
            elevation: 4.0,
            child: Column(children:[

              ListTile(
                contentPadding: EdgeInsets.all(10),
                title: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 5), child: Row(
                  children: [
                    Text(
                      'This is a card title',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    Icon(Icons.check_circle, color: PRIMARY_COLOR, size: 20),
                  ],
                ),
                ),

                subtitle: Text(
                    'Lorem ipsum dolor sit amet, consectetur\nadipisicing elit.Ab accusamus accusantium\ncommodi deserunt, '
                    'distinctio eos exercitationem\nfugit hic, itaque nisi'
                    'quisquam ullam vero!\n'
                    'Cumque ducimus eum fuga nesciunt nulla porro?',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.black,
                    )),

                leading: CircleAvatar(
                  radius: 25.0,
                  backgroundImage: AssetImage('assets/hd_dp.jpg'),
                ),
              ),

            ]),
          )),
    );
  }
}

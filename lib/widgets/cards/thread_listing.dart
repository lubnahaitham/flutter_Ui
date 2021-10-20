import 'package:advance_app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThreadListing extends StatelessWidget {
  const ThreadListing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Card(
        elevation: 4.0,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            Text(
              'Lorem ipsum dolor sit amet consectetur adipisici?',
              style: TextStyle(
                color: PRIMARY_COLOR,
                fontWeight: FontWeight.bold,
              ),
            ),

            Column(children: [
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipisicing elit. '
                'Error ex hic laboriosam magnam mollitia odio tempora. Aliquam assumenda deleniti enim eum fugit hic incidunt.'
                ' Hic mollitia nam quasi quibusdam unde.',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ]),

            Text('#Lorem_ipsum#Lorem_ipsum',
                style: TextStyle(
                  color: PRIMARY_COLOR,)),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Jose Portilla', style: TextStyle(
                  color: PRIMARY_COLOR,
                  fontWeight: FontWeight.bold,
                      fontSize: 17,
                ),
                ),
                    Icon(Icons.check_circle,
                        color: PRIMARY_COLOR,
                    size: 15),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Jan 15 ''18 at 13:56''', style: TextStyle(
                      color: Colors.grey,
                    ),
                    ),
                  ],
                )

          ]),
        ),
      ),
    );
  }
}

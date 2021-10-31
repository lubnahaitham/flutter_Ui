import 'package:advance/new_ui/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayerScreen extends StatefulWidget {
  
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'iLnmTe5Q2Qw',
    flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: true,
    ),
);
  VideoPlayerScreen({Key? key}) : super(key: key);

  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  

  bool checked = true;
  double value = 0.7;

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
      // Use a FutureBuilder to display a loading spinner while waiting for the
      // VideoPlayerController to finish initializing.
      body:
   
      
      YoutubePlayerBuilder(
    player: YoutubePlayer(
      controller: _controller,
  
    ),
    builder: (context, player){
        return Column(
            children: [
                // some widgets
                player,
                //some other widgets
          ListView.builder(
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.all(8),
                itemBuilder: (BuildContext context, index) {
                  return Column(children: [
                    ExpansionTile(
                        title: Text('Chapters',
                            style:
                                TextStyle(color: PRIMARY_COLOR, fontSize: 25)),
                        children: <Widget>[
                          ListTile(
                            title: Column(
                              children: [
                                Text(
                                  "ttttt",
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
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
                                padding: EdgeInsets.fromLTRB(0, 0, 50, 0),
                                child: Column(children: [
                                  Checkbox(
                                    activeColor: SECONDARY_COLOR,
                                    checkColor: Colors.white,
                                    value: checked,
                                    shape: CircleBorder(),
                                    onChanged: (value) {
                                      getCircleCheckBoxField(value!);
                                    },
                                    tristate: false,
                                  ),
                                  SizedBox(height: 3),
                                  LinearProgressIndicator(
                                    backgroundColor: Colors.grey,
                                    color: Colors.green,
                                    minHeight: 5,
                                    value: value,
                                  ),
                                ]),
                              ),
                            ),
                          ),
                          const Divider(
                            height: 10,
                            indent: 100,
                            thickness: 1,
                          ),
                          ListTile(
                            title: Column(
                              children: [
                                Text(
                                  "ttttt",
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
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
                                padding: EdgeInsets.fromLTRB(0, 0, 50, 0),
                                child: Column(children: [
                                  Checkbox(
                                    activeColor: SECONDARY_COLOR,
                                    checkColor: Colors.white,
                                    value: checked,
                                    shape: CircleBorder(),
                                    onChanged: (value) {
                                      getCircleCheckBoxField(value!);
                                    },
                                    tristate: false,
                                  ),
                                  SizedBox(height: 3),
                                  LinearProgressIndicator(
                                    backgroundColor: Colors.grey,
                                    color: Colors.green,
                                    minHeight: 5,
                                    value: value,
                                  ),
                                ]),
                              ),
                            ),
                          ),
                          const Divider(
                            height: 10,
                            indent: 100,
                            thickness: 1,
                          ),
                          ListTile(
                            title: Column(
                              children: [
                                Text(
                                  "ttttt",
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
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
                                padding: EdgeInsets.fromLTRB(0, 0, 50, 0),
                                child: Column(
                                  children: [
                                    Checkbox(
                                      activeColor: SECONDARY_COLOR,
                                      checkColor: Colors.white,
                                      value: checked,
                                      shape: CircleBorder(),
                                      onChanged: (value) {
                                        getCircleCheckBoxField(value!);
                                      },
                                      tristate: false,
                                    ),
                                    SizedBox(height: 3),
                                    LinearProgressIndicator(
                                      backgroundColor: Colors.grey,
                                      color: Colors.green,
                                      minHeight: 5,
                                      value: value,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Divider(
                            height: 10,
                            indent: 100,
                            thickness: 1,
                          ),
                          ListTile(
                            title: Column(
                              children: [
                                Text(
                                  "ttttt",
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
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
                                padding: EdgeInsets.fromLTRB(0, 0, 50, 0),
                                child: Column(children: [
                                  Checkbox(
                                    activeColor: SECONDARY_COLOR,
                                    checkColor: Colors.white,
                                    value: checked,
                                    shape: CircleBorder(),
                                    onChanged: (value) {
                                      getCircleCheckBoxField(value!);
                                    },
                                    tristate: false,
                                  ),
                                  SizedBox(height: 3),
                                  LinearProgressIndicator(
                                    backgroundColor: Colors.grey,
                                    color: Colors.green,
                                    minHeight: 5,
                                    value: value,
                                  ),
                                ]),
                              ),
                            ),
                          ),
                          Divider(
                            height: 10,
                            indent: 100,
                            thickness: 1,
                          ),
                        ]),
                  ]);
                });
                
              // While fetching, show a loading spinner.
              return CircularProgressIndicator();
           
          }),
    

     

    );
  }
}

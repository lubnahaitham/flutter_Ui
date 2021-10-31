import 'dart:convert';
import 'package:advance/new_ui/widgets/player_page/course_model.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';

Future<List<Course>> fetchCourse() async {
  final response =
      await http.get(Uri.parse('https://dev.itqadem.com/courses/in/en-designer-televisionfilm-set-16353438508305144/'));

  if (response.statusCode == 200) {
    final parsed = json.decode(response.body).cast<Map<String, dynamic>>();

    return parsed.map<Course>((json) => Course.fromMap(json)).toList();
  } else {
    throw Exception('Failed to load data');
  }
}

class Player extends StatefulWidget {
  Player({
    Key? key,
  }) : super(key: key);

  @override
  _PlayerState createState() => _PlayerState();
}

class _PlayerState extends State<Player> {

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

  late Future<List<Course>> futurePost;

  @override
  void initState() {
    super.initState();
    futurePost = fetchCourse();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: FutureBuilder<List<dynamic>>(
            future: fetchCourse(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    scrollDirection: Axis.vertical,
                    padding: EdgeInsets.all(8),
                     itemCount: snapshot.data!.length[0],
                    itemBuilder: (BuildContext context, index) {
                      return Column(
                        children: [
                        // FadeInImage.assetNetwork(
                        //   placeholder: 'assets/loading.gif',
                        //   image: 'https://picsum.photos/250?image=9',
                        // ),
                        
            
                        ExpansionTile(
                            title: Text('Chapters',
                                style: TextStyle(
                                    color: PRIMARY_COLOR, fontSize: 25)),
                            children: <Widget>[
                              ListTile(
                                title: Column(
                                  children: [
                                    Text(
                          "${snapshot.data![index].title}",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("${snapshot.data![index].body}"),
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
                          "${snapshot.data![index].title}",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("${snapshot.data![index].body}"),
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
                          "${snapshot.data![index].title}",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("${snapshot.data![index].body}"),
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
                                     ],),
                                   
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
                          "${snapshot.data![index].title}",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("${snapshot.data![index].body}"),
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
         


                        ExpansionTile(
                            title: Text('Chapters',
                                style: TextStyle(
                                    color: PRIMARY_COLOR, fontSize: 25)),
                            children: <Widget>[
                              ListTile(
                                title: Column(
                                  children: [
                                     Text(
                          "${snapshot.data![index].title}",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("${snapshot.data![index].body}"),
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
                          "${snapshot.data![index].title}",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("${snapshot.data![index].body}"),
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
                          "${snapshot.data![index].title}",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("${snapshot.data![index].body}"),
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
                          "${snapshot.data![index].title}",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("${snapshot.data![index].body}"),
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
                            ]),
                        ExpansionTile(
                            title: Text('Chapters',
                                style: TextStyle(
                                    color: PRIMARY_COLOR, fontSize: 25)),
                            children: <Widget>[
                              ListTile(
                                title: Column(
                                  children: [
                                     Text(
                          "${snapshot.data![index].title}",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("${snapshot.data![index].body}"),
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
                          "${snapshot.data![index].title}",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("${snapshot.data![index].body}"),
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
                          "${snapshot.data![index].title}",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("${snapshot.data![index].body}"),
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
                          "${snapshot.data![index].title}",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("${snapshot.data![index].body}"),
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
                            ]),
                        ExpansionTile(
                            title: Text('Chapters',
                                style: TextStyle(
                                    color: PRIMARY_COLOR, fontSize: 25)),
                            children: <Widget>[
                              ListTile(
                                title: Column(
                                  children: [
                                     Text(
                          "${snapshot.data![index].title}",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("${snapshot.data![index].body}"),
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
                          "${snapshot.data![index].title}",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("${snapshot.data![index].body}"),
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
                          "${snapshot.data![index].title}",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("${snapshot.data![index].body}"),
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
                          "${snapshot.data![index].title}",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("${snapshot.data![index].body}"),
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
                            ]),
                      ]);
                    });
              } else if (snapshot.hasError) {
                // If something went wrong
                return Text('Something went wrong...');
              }
              // While fetching, show a loading spinner.
              return CircularProgressIndicator();
            }),
      ),
    );
  }
}


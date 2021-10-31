import 'dart:convert';

List<Course> postFromJson(String str) =>
    List<Course>.from(json.decode(str).map((x) => Course.fromMap(x)));

class Course {
  Course({
    
    required this.id,
    required this.title,
    required this.body,
  });


  int id;
  String title;
  String body;

  factory Course.fromMap(Map<String, dynamic> json) => Course(
    
        id: json["id"],
        title: json["title"],
        body: json["body"],
      );
}
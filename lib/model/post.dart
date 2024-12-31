import 'dart:convert';

class Post {
  final int id;
  final int userId;
  final String title;
  final String body;

  Post({required this.id,
    required this.userId,
      required this.title,
      required this.body});

  Post copyWith({
    int? id,
    int? userId,
    String? title,
    String? body,
  }){
    return Post(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }


  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'title': title,
      'body': body,
    };
  }
  factory Post.fromMap(Map<String, dynamic> map) {
    return Post(
      id: map['id']?.toInt() ?? 0,
      userId: map['userId']?.toInt() ?? 0,
      title: map['title'] ?? '',
      body: map['body'] ?? '',
    );
  }


  String toJson() => json.encode(toMap());
  factory Post.fromJson(String source) => Post.fromMap(json.decode(source));





}





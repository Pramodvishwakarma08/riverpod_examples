class Post {
  final int id;
  final String title;
  final String body;

  Post({
    required this.id,
    required this.title,
    required this.body,
  });

  // Convert JSON to Post object
  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }

  // Convert Post object to JSON
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'body': body,
    };
  }
}

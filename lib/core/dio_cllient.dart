import 'package:dio/dio.dart';
import 'package:untitled2/model/post.dart';

final dio = Dio(
  BaseOptions(
    baseUrl: '',
    connectTimeout: Duration(seconds: 30),
    receiveTimeout: Duration(seconds: 30),
  ),
);

class ApiRepository {

  Future<List<Post>> fetchPosts() async {
    try {
      final response = await dio.get('https://jsonplaceholder.typicode.com/posts');
      final List<dynamic> postsJson = response.data;
      return postsJson.map((json) => Post.fromJson(json)).toList();
    } catch (e) {
      throw Exception('Failed to fetch posts: $e');
    }
  }

}
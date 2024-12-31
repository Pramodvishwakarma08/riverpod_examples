
import '../../../core/dio_cllient.dart';
import 'post_model.dart';

Future<List<Post>> fetchPosts() async {
  try {
    final response = await dio.get('https://jsonplaceholder.typicode.com/posts');
    final List<dynamic> postsJson = response.data;
    return postsJson.map((json) => Post.fromJson(json)).toList();
  } catch (e) {
    throw Exception('Failed to fetch posts: $e');
  }
}

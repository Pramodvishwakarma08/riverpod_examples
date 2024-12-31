import '../../../core/dio_cllient.dart';
import 'user_model.dart';

Future<List<User>> fetchUsers() async {
  try {
    final response = await dio.get('https://reqres.in/api/users?page=2');
    final List<dynamic> usersJson = response.data['data'];
    return usersJson.map((json) => User.fromJson(json)).toList();
  } catch (e) {
    throw Exception('Failed to fetch users: $e');
  }
}

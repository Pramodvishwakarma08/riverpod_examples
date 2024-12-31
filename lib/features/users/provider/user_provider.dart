import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/user_service.dart';
import '../data/user_model.dart';

final userProvider = FutureProvider<List<User>>((ref) async {
  return fetchUsers();
});

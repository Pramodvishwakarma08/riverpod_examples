import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/post_service.dart';
import '../data/post_model.dart';

final postProvider = FutureProvider<List<Post>>((ref) async {
  return fetchPosts();
});

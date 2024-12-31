import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled2/model/post.dart';
import '../core/dio_cllient.dart';




final postProvider = StateNotifierProvider<PostNotifier, PostState>((ref) => PostNotifier());

@immutable
abstract class PostState {}


class PostInitialState extends PostState {}
class PostsLoadingState extends PostState {

}
class PostsLoadedState extends PostState {
  PostsLoadedState({required this.posts});
  final List<Post> posts;
}
class PostErrorState extends PostState {
  PostErrorState({required this.error});
  final String error;
}



class PostNotifier extends StateNotifier<PostState> {
  PostNotifier() : super(PostInitialState());

  ApiRepository apiRepository = ApiRepository();

  Future<void> fetchPosts() async {

    try {
      state = PostsLoadingState();
      List<Post> posts = await apiRepository.fetchPosts();
      state = PostsLoadedState(posts: posts);
    } catch (e) {
      state = PostErrorState(error: e.toString());
    }
  }

}
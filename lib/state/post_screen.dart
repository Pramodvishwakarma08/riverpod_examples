import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled2/state/post_state.dart';


class PostScreen2 extends StatelessWidget {
  const PostScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Consumer(builder: (context, ref, child) {
              PostState state =   ref.watch(postProvider) ;
              if(state is PostInitialState){
                return InkWell(
                  onTap: () {
                    ref.read(postProvider.notifier).fetchPosts();
                  },
                    child: Text("Tap to fatch  data"));
              }
              if(state is PostsLoadingState){
                return const Center(child: CircularProgressIndicator(),);
              }
              if(state is PostsLoadedState){
                return Text("${state.posts.length}");
              }
              if(state is PostErrorState){
                return Text("Error: ${state.error}");
              }
              return Container(child: Text("data"),);


            }


            )
        ],

      ),
    );
  }
}

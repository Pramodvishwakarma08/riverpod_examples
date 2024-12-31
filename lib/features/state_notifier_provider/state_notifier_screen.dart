import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled2/features/state_notifier_provider/state_notifier_provider.dart';

class StateNotifierScreen extends ConsumerWidget {
  const StateNotifierScreen({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(height: 230,),
          Container(),
          Container(),
          Consumer(builder: (context, ref, child) {
            int count = ref.watch(counterNotifierProvider);
            return Text("$count");

          },),
          Container(),
          Container(),
          Container(),
          Container(),
          Container(),
          Container(),
          TextButton(onPressed: () {
            ref.read(counterNotifierProvider.notifier).increment();
          }, child: Text("Increment")),




        ],
      ),
    );
  }
}

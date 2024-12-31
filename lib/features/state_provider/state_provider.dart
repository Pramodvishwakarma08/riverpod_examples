
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';



final counterProvider = StateProvider<int>((ref) {
  return 1000;
});


class StateProviderScreen extends ConsumerWidget {
  const StateProviderScreen({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {

    return  Scaffold(
      appBar: AppBar(title: const Text('Counter'),),
       body: Center(
         child:Column(
           mainAxisSize: MainAxisSize.min,
           children: [
             Consumer(builder: (context, ref, child) {
               int count = ref.watch(counterProvider);
               return Text("$count");
             },),

             ElevatedButton(onPressed: () {
               ref.read(counterProvider.notifier).state=  ref.read(counterProvider.notifier).state+100;
             }, child: const Text("Increment")),
             ElevatedButton(onPressed: () {
               ref.read(counterProvider.notifier).state= 100;
             }, child: const Text("Decrement")),


           ],
         ),
       ),
    );
  }
}

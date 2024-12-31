import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled2/features/state_provider/state_provider.dart';


Stream<int> fetchNumber() {
  return Stream<int>.periodic(const Duration(milliseconds: 100), (number) => number).take(1000);
}

final numProvider = StreamProvider<int>((ref) {
  return fetchNumber();
});


class StreamProviderScreen extends ConsumerWidget {
  const StreamProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
   var num = ref.watch(numProvider);
    return  Scaffold(
      appBar: AppBar(title: Text("Stream Provider"),),
      body: Column(
        children: [
          num.when(
              data: (data) => Text("$data"),
              error: (error, stackTrace) => Text('Error: $error'),
              loading: () => const CircularProgressIndicator()),
        ],
      ),
    );
  }
}



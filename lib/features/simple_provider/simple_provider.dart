import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';



final stringProvider = Provider<String>((ref) {
  return 'Simple provider';
});


class SimpleProvidersScreen extends ConsumerWidget {
  const SimpleProvidersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    String name =    ref.read<String>(stringProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$name")

          ],
        ),
      ),
    );
  }
}



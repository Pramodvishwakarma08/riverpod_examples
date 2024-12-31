import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled2/features/state_provider/state_provider.dart';
import 'features/all_provider_screen/providers_screen.dart';
import 'features/furure_provider/future_provider.dart';
import 'features/post/presentation/post_list_screen.dart';
import 'features/simple_provider/simple_provider.dart';
import 'features/users/presentation/user_list_screen.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multi-Feature App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home:  AllProviderScreen(),
    );
  }
}




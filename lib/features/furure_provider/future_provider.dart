import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled2/features/state_provider/state_provider.dart';
import '../state_notifier_provider/state_notifier_screen.dart';
import '../stream_provider/strem_provider.dart';

Future<String?> fetchWeather(String city) async {
  await Future.delayed(const Duration(seconds: 3));
  return 'Sunny $city';
}

final weatherProvider = FutureProvider.family<String?, String>((ref,cityName) async {
  return fetchWeather(cityName);
});

class FutureProvideraa extends ConsumerWidget {
  const FutureProvideraa({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return  Scaffold(
      appBar: AppBar(),
       body: Column(
         children: [
          Text("${ref.watch(counterProvider)}"),
           ref.watch(weatherProvider("Indore")).when(
               data: (data) => Text("$data"),
               error: (error, stackTrace) => Text('Error: $error'),
               loading: () => const CircularProgressIndicator()),
         ],
       ),
    );
  }
}



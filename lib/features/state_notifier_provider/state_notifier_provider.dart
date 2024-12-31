import 'package:flutter_riverpod/flutter_riverpod.dart';


final counterNotifierProvider = StateNotifierProvider<CounterNotifier, int>(
  (ref) => CounterNotifier(),
);


class CounterNotifier extends StateNotifier<int> {
  CounterNotifier() : super(0);

   void increment() {
     state++;
   }

}

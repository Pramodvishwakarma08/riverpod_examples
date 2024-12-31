import 'package:flutter/material.dart';
import 'package:untitled2/features/simple_provider/simple_provider.dart';

import '../../state/post_screen.dart';
import '../change_notifier_provider/change_notifier_screen.dart';
import '../furure_provider/future_provider.dart';
import '../state_notifier_provider/state_notifier_screen.dart';
import '../stream_provider/strem_provider.dart';

class  AllProviderScreen extends StatelessWidget {
  const  AllProviderScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => SimpleProvidersScreen()));
          }, child: Text("Simple Provider")),
          TextButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => FutureProvideraa()));
          }, child: Text("Future Provider")),

          TextButton(
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => StreamProviderScreen()));},
              child: Text("Stream  Provider")),

          TextButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => StateNotifierScreen()));
          }, child: Text("State Notifier  Provider")),

          TextButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ChangeNotifierScreen()));
          }, child: Text("Change Notifier  Provider")),


          TextButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => PostScreen2()));
          }, child: Text("Api call State  Notifier Provider")),



        ],
      ),
    );
  }
}

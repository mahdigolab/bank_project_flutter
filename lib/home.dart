import 'package:flutter/material.dart';
import 'appBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: "mahdi"),
      // AppBar(

      //   // title: const Text('Second Page'),
      // ),
      body: Center(
        child: Text('Welcome to the Second Page!'),
      ),
    );
  }
}

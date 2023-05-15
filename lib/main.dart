import 'package:flutter/material.dart';
import 'package:netflics/screen/navbar/navigationscrn.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Netflix',
      theme: ThemeData(brightness: Brightness.dark),
      home: const Navigation(),
    );
  }
}

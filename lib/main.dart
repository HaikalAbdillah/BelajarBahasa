import 'package:acbrain/components/homepage.dart';
import 'package:acbrain/components/splashpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Splashpage(),
        '/home': (context) => Homepage(),
      },
    );
  }
}

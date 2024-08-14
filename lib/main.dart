import 'package:flutter/material.dart';
import 'package:flutter_reorderable_listview/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reorderable ListView',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData.dark(),
      home: const HomeScreen(),
    );
  }
}

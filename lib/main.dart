import 'package:flutter/material.dart';
import 'Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green,
        appBarTheme: AppBarTheme(
          color: Colors.deepPurpleAccent,
          centerTitle: true,
        ),
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      title: "Flutter App",
      home: HomePage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const BookPulseApp());
}

class BookPulseApp extends StatelessWidget {
  const BookPulseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Book Pulse",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

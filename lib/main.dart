import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // Use MyApp for consistency
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "ListView Builder Demo", // Corrected capitalization
          ),
          centerTitle: true, // Removed unnecessary Style property
          backgroundColor: Colors.blue,
          // Consider adding a leading or trailing widget for better UX
        ),
        body: ListView.builder(
          itemCount: 30,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return Text( // Use Text widget directly
              "Index: $index",
              style: const TextStyle(
                fontSize: 20.0, // Use double for font size
                fontWeight: FontWeight.bold,
              ),
            );
          },
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyPage(title: 'Hello there'), // Use MyPage directly
  ));
}

class MyPage extends StatelessWidget {
final String title;

const MyPage({super.key, required this.title});

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: Text(title)),
    body: const Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.home, size: 40),
          Icon(Icons.favorite, size: 40),
          Icon(Icons.settings, size: 40),
        ],
      ),
    ),
  );
}
}
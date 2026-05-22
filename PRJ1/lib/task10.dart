import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyPage(title: 'Hello there'), // Use MyPage directly
    ),
  );
}

class MyPage extends StatelessWidget {
  final String title;

  const MyPage({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Local Babyy')),
      body: Center(child: Image.asset('asset/images/Car1.jpg', width: 400)),
    );
  }
}

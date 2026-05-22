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
      appBar: AppBar(title: Text('Image Widget')),
      body: Center(
        child: Image.network(
          'https://upload.wikimedia.org/wikipedia/commons/f/fe/Toyota_Corolla_Hybrid_%28E210%29_IMG_4338.jpg',
          width: 400,
        ),
      ),
    );
  }
}

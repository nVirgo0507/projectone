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
      appBar: AppBar(title: Text('Locally Babyyy')),
      body: Center(
        child: Card(
          elevation: 10,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.person, size: 60),
                SizedBox(height: 10),
                Text(
                  'John Doe',
                  style: TextStyle(fontSize: 24),
                ),
                Text('Flutter Developer'),
                Text("I'm Gae"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

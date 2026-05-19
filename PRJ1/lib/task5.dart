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
      appBar: AppBar(title: Text('Nhap Thong tin SV')),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            children: [
            TextField(
            decoration: InputDecoration(
              labelText: 'Nhap MSSV',
              hintText: 'Vi Du: SEXXXXX',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.badge),
            ),
            keyboardType: TextInputType.number,
          ),
        SizedBox(height: 20),
        TextField(
          decoration: InputDecoration(
            labelText: 'Nhap Ho Ten',
            hintText: 'Vi Du: Nguyen Van A',
            border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.person),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Submit'),
          ),
          ],
        ),
      ),
      ),
      );
  }
}

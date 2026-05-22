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
  final List<Map<String, String>> car = [
    {
      'name': 'Toyota Corolla',
      'image': 'asset/images/Car1.jpg',
      'description':
          'The Toyota Corolla is a compact car that has been in production since 1966. It is known for its reliability, fuel efficiency, and affordability.',
    },
    {
      'name': 'Toyota Corolla 2021',
      'image': 'asset/images/Car2.jpg',
      'description':
          'The 2021 Toyota Corolla is a compact sedan that offers a comfortable ride, advanced safety features, and a fuel-efficient engine. It comes with a sleek design and modern technology, making it a popular choice among car buyers.',
    },
    {
      'name': 'Toyota Corolla 2020',
      'image': 'asset/images/Car3.jpg',
      'description': 'This is a 2020 Corolla',
    },
    {
      'name': 'Toyota Corolla 2019',
      'image': 'asset/images/Car4.jpg',
      'description': 'This is a 2019 Corolla',
    },
    {
      'name': 'Toyota Corolla 2018',
      'image': 'asset/images/Car5.jpg',
      'description': 'This is a 2018 Corolla',
    },
  ];

  MyPage({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Car Market'),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: car.length,
        itemBuilder: (context, index) {
          final item = car[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      item['image']!,
                      height: 200,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    item['name']!,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    item['description']!,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

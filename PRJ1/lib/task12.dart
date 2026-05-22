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
      backgroundColor: Color(0xFFF5F2F7),
      appBar: AppBar(
        title: Text('Card Widget'),
        centerTitle: true,
        backgroundColor: Color(0xFFF5F2F7),
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Card(
          elevation: 12,
          shadowColor: Colors.black26,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: SizedBox(
                    width: 300,
                    height: 300,
                    child: Image.asset(
                      'asset/images/Car1.jpg',
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
                SizedBox(height: 18),

                Text(
                  'Toyota Corolla',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  'The Toyota Corolla is a compact car that has been in production since 1966. It is known for its reliability, fuel efficiency, and affordability. The Corolla has been one of the best-selling cars worldwide, with over 44 million units sold as of 2021. It is available in various body styles, including sedan, hatchback, and wagon, and is offered with a range of engine options, including gasoline, hybrid, and electric. The Corolla is popular among drivers of all ages and is often praised for its comfortable ride, spacious interior, and advanced safety features.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                  ),
                  child: Text(
                    'Learn More',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

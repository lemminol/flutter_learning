import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('중고 거래'), // More descriptive title
          backgroundColor: Colors.greenAccent,
          foregroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0), // Add spacing
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start, // Align vertically
            children: [
              // Image section (add image logic here)
              Container(
                width: 100,
                height: 100,
                color: Colors.grey[200], // Placeholder color for image
                child: Center(
                  child: Image.asset('camera.jpg'), // Placeholder text for image
                ),
              ),
              SizedBox(width: 16.0), // Add spacing between image and text
              Expanded( // Flexible column for text details
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Align text left
                  children: [
                    Text(
                      '캐논 DSLR 100D (단렌즈, 16GB SD 포함)',
                      style: TextStyle(fontSize: 16.0, color: Colors.black),
                    ),
                    SizedBox(height: 4.0), // Add spacing between title and location
                    Text(
                      '성동구 행당동 · 끌올 10분전',
                      style: TextStyle(fontSize: 14.0, color: Colors.grey),
                    ),
                    SizedBox(height: 8.0), // Add spacing between location and price
                    Row(
                      // Price and Favorite button row
                      children: [
                        Text(
                          '210,000원',
                          style: TextStyle(fontSize: 16.0, color: Colors.black),
                        ),
                        Spacer(), // Add space between price and favorite button
                        IconButton(
                          icon: Icon(Icons.favorite),
                          color: Colors.red, // Favorite button color
                          onPressed: () {
                            // Handle favorite button press (e.g., toggle like state)
                            print('Favorite button pressed');
                          },
                        ),
                        Text('4')
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
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
          appBar: AppBar(title: Text('앱제목'),
            backgroundColor: Colors.greenAccent,
            foregroundColor: Colors.white,
          ),
          body: ShopItem(),
          )
        );

  }
}

class ShopItem extends StatelessWidget {
  const ShopItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: Text('안녕'),
    );
  }
}

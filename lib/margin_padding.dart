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
          body: Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: double.infinity, height: 50, color: Colors.greenAccent,

            ),
          )

        )
    );

  }
}

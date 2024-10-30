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
          body: Row(
            children: [
              Flexible(child: Container(color: Colors.blue), flex: 5,),
              Flexible(child: Container(color: Colors.deepOrange,), flex: 5,),
              Flexible(child: Container(color: Colors.cyanAccent,), flex: 5,),
            ],
          )
        )
    );

  }
}

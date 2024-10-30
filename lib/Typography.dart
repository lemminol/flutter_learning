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
          body: SizedBox(
            child: Text('안녕하세요',
              style: TextStyle(fontSize: 30, color: Colors.red),),
              children: [
              ElevatedButton(
                      child: Text('버튼'),
                  onPressed: (){},),
                ],


            ),
          ),
    );


  }
}

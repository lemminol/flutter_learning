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
          body: ListView.builder(
            itemCount: 3,
              itemBuilder: (context, i){
              print(i);
              return ListTile(
                leading: Image.asset('camera.jpg'),
                title: Text('data'),
              );
              },)

        )
    );

  }
}

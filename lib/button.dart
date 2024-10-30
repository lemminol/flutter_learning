import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  var a = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          floatingActionButton: FloatingActionButton(
              child: Text(a.toString()),
              onPressed: (){
                print(a);
                a++;
              },
          ),
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

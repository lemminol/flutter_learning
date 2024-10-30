import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}




class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var a = 1;
  var name = ['피자집', '집', '가게'];
  var like = [0, 0, 0];

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(
            floatingActionButton: FloatingActionButton(
              child: Text(a.toString()),
              onPressed: (){
                setState(() {
                  a++;
                });
              },
            ),
            appBar: AppBar(title: Text('앱제목'),
              backgroundColor: Colors.greenAccent,
              foregroundColor: Colors.white,
            ),
            body: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, i){
                return ListTile(
                  leading: Text(like[i].toString()),
                  title: Text(name[i]),
                  trailing: ElevatedButton(child: Text('좋아요'),
                      onPressed: (){
                        setState(() {
                          like[i]++;
                        }
                        );
                      }
                      ),
                );
              },)

        )
    );

  }
}

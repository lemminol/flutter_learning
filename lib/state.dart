import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
          home: MyApp()
      )
  );
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var a = 3;
  var like = [0, 0, 0];
  var name = ['김영숙', '홍길동', '피자집'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(context: context, builder: (context) {
              return DialogUI(state: a);
            });
          },
        ),
        appBar: AppBar( title: Text('연락처앱')),
        body: ListView.builder(
          itemCount: 3,
          itemBuilder: (c, i) {
            return ListTile(
              leading: Icon(Icons.account_circle_rounded),
              title: Text(name[i]),
            );
          },
        )
    );
  }
}

class DialogUI extends StatelessWidget {
  const DialogUI({Key? key, this.state}) : super(key: key);
  final state; //final은 수정안됨, var를 쓸거면 const 삭제

  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: SizedBox(
          width: 300,
          height: 300,
          child: Column(
            children: [
              TextField(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(child: Text('취소'), onPressed: (){ Navigator.pop(context);}),
                  TextButton(child: Text(state.toString()), onPressed: () {})
                ],
              )
            ],
          ),
        )
    );
  }
}
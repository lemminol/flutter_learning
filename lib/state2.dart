// 전체 코드
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
  var total = 3;
  var like = [0, 0, 0];
  var name = ['김영숙', '홍길동', '피자집'];

  addOne() {
    setState(() {
      total++;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(context: context, builder: (context) {
              return DialogUI(addOne: addOne);
            });
          },
        ),
        appBar: AppBar( title: Text(total.toString())),
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
  DialogUI({Key? key, this.addOne}) : super(key: key);
  final addOne;
  var inputData = TextEditingController();
  var inputData2 = {};

  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: SizedBox(
          width: 300,
          height: 300,
          child: Column(
            children: [
              TextField(onChanged: (text){inputData2 = text as Map;},),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(child: Text('취소'), onPressed: (){ Navigator.pop(context);}),
                  TextButton(child: Text('완료'), onPressed: () {addOne(); })
                ],
              )
            ],
          ),
        )
    );
  }
}
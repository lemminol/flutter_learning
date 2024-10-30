import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
      home: MyApp()
  )
  );
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var a = 1;

  @override
  Widget build(BuildContext context) {


    return Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: (){
                showDialog(context: context, builder: (context){
                  return DialogUI(
                  );

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
                print(i);
                return ListTile(
                  leading: Image.asset('camera.jpg'),
                  title: Text('data'),
                );
              },)

        );

  }
}

class DialogUI extends StatefulWidget {
  const DialogUI({super.key});

  @override
  State<DialogUI> createState() => _DialogUIState();
}

class _DialogUIState extends State<DialogUI> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        width: 300,
        height: 300,
        child: Column(
          children: [
            TextField(),
            TextButton(onPressed: (){}, child: Text('완료')),
            TextButton(onPressed: (){Navigator.pop(context);}, child: Text('취소'))
          ],
        )
      ),
    );
  }
}


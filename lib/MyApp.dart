import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  String name;
  int old;

  MyApp({required this.name, required this.old});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppStateFull();
    throw UnimplementedError();
  }
}

class MyAppStateFull extends State<MyApp> {
  late String text = 'PlayFootBall';
  final _textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: "HomeScreen",
        home: Scaffold(
            body: SafeArea(
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TextField(
                  controller: _textFieldController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                  onChanged: (textValue) {
                    this.setState(() {
                      text = textValue;
                    });
                  },
                ),
              ),
              Text(
                "My Hobby is $text",
                style: TextStyle(fontSize: 15),
                textDirection: TextDirection.ltr,
              ),
            ],
          )),
        )));
  }
}

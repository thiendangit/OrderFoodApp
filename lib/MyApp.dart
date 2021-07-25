import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  final List<String> items;

  const MyApp({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _onPressShowBottomSheet() {
      showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return Column(children: [
              Container(
                height: 400,
                color: Colors.white,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const Text('BottomSheet'),
                      ElevatedButton(
                          child: const Text('Close BottomSheet'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          })
                    ],
                  ),
                ),
              )
            ]);
          });
    }
    const title = 'Long List';
    return Scaffold(
        appBar: AppBar(
          title: const Text("MyApp"),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: FlutterLogo(size: 56.0),
              title: Text('Two-line ListTile'),
              subtitle: Text('Here is a second line'),
              trailing: IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  _onPressShowBottomSheet();
                },
              ),
            );
          },
        ),
    );
  }
}

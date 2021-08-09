import 'dart:ui';

import 'package:awesome_app/categories_page.dart';
import 'package:awesome_app/foods_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Food App with Navigation",
      initialRoute: '/',
      routes: {
        FoodsPage.routeName: (context) => FoodsPage(),
      },
      theme: ThemeData(
          primarySwatch: Colors.green,
          fontFamily: 'Itim',
          textTheme: ThemeData.light().textTheme.copyWith(
              body1: TextStyle(color: Color.fromRGBO(20, 52, 52, 1)),
              body2: TextStyle(color: Color.fromRGBO(20, 52, 52, 1)),
              title: TextStyle(
                  fontSize: 25, color: Colors.white, fontFamily: 'Rajdhani'))),
      home: Scaffold(
        appBar: AppBar(title: Text('Food Categories')),
        body: CategoriesPage(),
      ),
    );
    throw UnimplementedError();
  }
}

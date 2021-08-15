import 'dart:ui';

import 'package:awesome_app/bloc/counter_bloc.dart';
import 'package:awesome_app/categories_page.dart';
import 'package:awesome_app/counter_page.dart';
import 'package:awesome_app/detail_food_page.dart';
import 'package:awesome_app/foods_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MaterialApp(
    title: "Food App with Navigation",
    initialRoute: '/',
    routes: {
      FoodsPage.routeName: (context) => FoodsPage(),
      DetailFoodPage.routeName: (context) => DetailFoodPage(),
      CounterPage.routeName: (context) => CounterPage(),
    },
    theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Itim',
        textTheme: ThemeData.light().textTheme.copyWith(
            body1: TextStyle(color: Color.fromRGBO(20, 52, 52, 1)),
            body2: TextStyle(color: Color.fromRGBO(20, 52, 52, 1)),
            title: TextStyle(
                fontSize: 25, color: Colors.white, fontFamily: 'Rajdhani'))),
    home: MyApp()));

class MyApp extends StatelessWidget {
  Stream<int> aStreamFunction() async* {
    yield 2;
    yield 5;
    yield 7;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final aStream = this.aStreamFunction();
    aStream.forEach((element) {});
    return Scaffold(
        appBar: AppBar(
          title: Text('Food Categories'),
          actions: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, CounterPage.routeName);
              },
              child: Container(
                padding: const EdgeInsets.all(10.0),
                child: Icon(
                  Icons.add_box_rounded,
                ),
              ),
            )
          ],
        ),
        body: CategoriesPage());
    throw UnimplementedError();
  }
}

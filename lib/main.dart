import 'package:flutter/material.dart';
import 'MyApp.dart';

void main() {
  runApp(
      MaterialApp(
          title: "Food App",
          home:
          MyApp(items: List<String>.generate(10000, (i) => 'Item $i'))));
  }

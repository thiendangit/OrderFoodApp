import 'dart:core';
import 'dart:math';

class Food {
  late int id;
  late String name;
  late String urlImage;
  late Duration duration;
  late Complexity complexity;
  late List<String> ingredients;
  late int categoryId;

  // constructor
  Food(
      {required this.name,
      required this.urlImage,
      required this.duration,
      this.complexity = Complexity.Medium,
      this.ingredients = const [],
      this.categoryId = 0}) {
    this.id = Random().nextInt(1000);
  }
}

enum Complexity { Simple, Medium, Hard }

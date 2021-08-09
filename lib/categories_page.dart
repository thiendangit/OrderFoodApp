import 'package:awesome_app/fake_data.dart';
import 'package:flutter/material.dart';

import 'categories_item.dart';

class CategoriesPage extends StatelessWidget {
  static const String routeName = '/CategoriesPage';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView(
      padding: EdgeInsets.all(12),
      children: FAKE_DATA.map((e) => CategoryItem(category : e)).toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10
      ),
    );
    throw UnimplementedError();
  }
}
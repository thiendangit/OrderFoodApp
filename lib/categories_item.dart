import 'package:awesome_app/models/category.dart';
import 'package:flutter/material.dart';
import 'foods_page.dart';

class CategoryItem extends StatelessWidget {
  Category category;

  CategoryItem({required this.category});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Color color = this.category.color;
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(FoodsPage.routeName,
            arguments: {'category': this.category});
      },
      splashColor: Colors.teal,
      child: Container(
          child: Container(
              child: Center(
                  child: Text(this.category.content,
                      style: Theme.of(context).textTheme.title)),
              decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                      colors: [color.withOpacity(0.6), color],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight)))),
    );
    throw UnimplementedError();
  }
}

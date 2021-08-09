import 'package:awesome_app/fake_data.dart';
import 'package:awesome_app/models/category.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'models/food.dart';

class FoodsPage extends StatelessWidget {
  static const String routeName = '/FoodsPage';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as Map;
    final category = args['category'] as Category;
    List<Food> foods =
        FAKE_FOODS.where((food) => food.categoryId == category.id).toList();
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: category.color,
        title: Text("Foods from ${category.content}"),
      ),
      body: Center(
        child: Center(
          child: ListView.builder(
              itemCount: foods.length,
              itemBuilder: (context, index) {
                Food food = foods[index];
                return Stack(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(20),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        clipBehavior: Clip.hardEdge,
                        child: Center(
                          child: FadeInImage.assetNetwork(
                              placeholder: 'assets/images/loading.gif',
                              image: food.urlImage),
                        ),
                      ),
                    ),
                    Positioned(
                        top: 30,
                        left: 30,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.black45,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.white, width: 2)
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.access_time_rounded,
                                  color: Colors.redAccent, size: 25),
                              Text("${food.duration.inMinutes} minutes",
                                  style: TextStyle(
                                      fontSize: 22, color: Colors.white))
                            ],
                          ),
                        ))
                  ],
                );
              }),
        ),
      ),
    );
    throw UnimplementedError();
  }
}

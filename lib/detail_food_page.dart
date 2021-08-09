import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'models/food.dart';

class DetailFoodPage extends StatelessWidget {
  static final String routeName = '/DetailFoodPage';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as Map;
    final food = args['food'] as Food;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("detail page")),
      body: Column(
        children: [
          Center(
            child: FadeInImage.assetNetwork(
                placeholder: 'assets/images/loading.gif', image: food.urlImage),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Text('Ingredients : ',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: food.ingredients.length,
                  itemBuilder: (context, index) {
                    String ingredient = food.ingredients[index];
                    return ListTile(
                      leading: CircleAvatar(
                        child: Text('#${index + 1}'),
                      ),
                      title: Text(ingredient, style: TextStyle(fontSize: 18)),
                    );
                  }))
        ],
      ),
    );
    throw UnimplementedError();
  }
}

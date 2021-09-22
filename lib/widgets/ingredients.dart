import 'package:flutter/material.dart';

class Ingredients extends StatelessWidget {
  final List<String> ingredients;

  const Ingredients(this.ingredients);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      height: 200,
      color: Colors.white,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  ingredients[index],
                )),
          );
        },
        itemCount: ingredients.length,
      ),
    );
  }
}

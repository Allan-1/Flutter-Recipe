import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myrecipes/data/data.dart';
import 'package:myrecipes/widgets/ingredients.dart';
import 'package:myrecipes/widgets/steps.dart';

class RecipeScreen extends StatelessWidget {
  const RecipeScreen({Key? key}) : super(key: key);

  static const recipeRoute = '/recipes';

  Widget sectionTitle(title) {
    return Container(
        padding: EdgeInsets.all(15),
        child: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ));
  }

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)!.settings.arguments;
    final recipes = Meal_Data.firstWhere((meal) => meal.id == routeArgs);

    return Scaffold(
        appBar: AppBar(
          title: Text(recipes.title),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Image.network(
                  recipes.imageUrl,
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Text(
                  recipes.title,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                sectionTitle('Ingredients'),
                Ingredients(recipes.ingredients),
                sectionTitle('Steps'),
                Steps(recipes.steps),
                SizedBox(height: 10,)
              ],
            ),
          ),
        ));
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myrecipes/provider/meal_provider.dart';
import 'package:myrecipes/widgets/ingredients.dart';
import 'package:myrecipes/widgets/steps.dart';
import 'package:provider/provider.dart';

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
    final recipes = Provider.of<MealProvider>(context).getMealRecipe(routeArgs);


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
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          recipes.toggleIsFavourite();
          print(recipes.isFavourite);
        },
        child: Icon(recipes.isFavourite
            ? Icons.favorite
            : Icons.favorite_border_outlined),
      ),
    );
  }
}

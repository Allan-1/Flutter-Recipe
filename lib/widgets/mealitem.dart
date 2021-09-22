import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myrecipes/models/Meal.dart';
import 'package:myrecipes/screens/recipe_screen.dart';

class MealItem extends StatelessWidget {
  final String title;
  final String id;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  const MealItem(
      {required this.id,
      required this.imageUrl,
      required this.title,
      required this.affordability,
      required this.complexity,
      required this.duration});

  String get complexityText {
    switch (complexity) {
      case Complexity.simple:
        return 'simple';
      case Complexity.Challenging:
        return 'Challenging';
      case Complexity.Hard:
        return 'Hard';
      default:
        return 'Unknown';
    }
  }

  String get affordabilityText {
    switch (affordability) {
      case Affordability.Affordable:
        return 'Affordable';
      case Affordability.Expensive:
        return 'Expensive';
      case Affordability.Pricey:
        return 'Pricey';
      default:
        return 'Unknown';
    }
  }
  
  void getRecipeScreen(BuildContext context){
    Navigator.of(context).pushNamed(RecipeScreen.recipeRoute, arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => getRecipeScreen(context),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 5,
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                    bottom: 20,
                    right: 5,
                    child: Container(
                      width: 250,
                      padding: EdgeInsets.all(20),
                      color: Colors.black54,
                      child: Text(
                        title,
                        style: TextStyle(color: Colors.white, fontSize: 18),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ))
              ],
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(Icons.access_time),
                      SizedBox(
                        width: 5,
                      ),
                      Text('$duration min')
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.money),
                      SizedBox(
                        width: 5,
                      ),
                      Text(affordabilityText)
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.work),
                      SizedBox(
                        width: 5,
                      ),
                      Text(complexityText),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

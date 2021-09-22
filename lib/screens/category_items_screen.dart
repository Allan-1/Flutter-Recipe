import 'package:flutter/material.dart';
import 'package:myrecipes/data/data.dart';
import 'package:myrecipes/widgets/mealitem.dart';


class CategoryItems extends StatelessWidget {
  const CategoryItems({Key? key}) : super(key: key);

  static const CategoryItemsRoute = '/categories';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final titleArgs = routeArgs['title'];
    final idArgs = routeArgs['id'];

    final categoryMeals = Meal_Data.where((meal) => meal.categories.contains(idArgs)).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(titleArgs!),
      ),
      body: ListView.builder(itemBuilder: (ctx, index){
        return MealItem(id: categoryMeals[index].id,
            imageUrl: categoryMeals[index].imageUrl,
            title: categoryMeals[index].title,
            affordability: categoryMeals[index].affordability,
            complexity: categoryMeals[index].complexity,
            duration: categoryMeals[index].duration);
      }, itemCount: categoryMeals.length,)
    );
  }
}

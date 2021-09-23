import 'package:flutter/material.dart';
import 'package:myrecipes/provider/meal_provider.dart';
import 'package:myrecipes/widgets/mealitem.dart';
import 'package:provider/provider.dart';


class CategoryItems extends StatelessWidget {
  const CategoryItems({Key? key}) : super(key: key);

  static const CategoryItemsRoute = '/categories';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final titleArgs = routeArgs['title'];
    final idArgs = routeArgs['id'];

   final meal = Provider.of<MealProvider>(context).getMealCategory(idArgs!);

    return Scaffold(
      appBar: AppBar(
        title: Text(titleArgs!),
      ),
      body: ListView.builder(itemBuilder: (ctx, index){
        return MealItem(id: meal[index].id,
            imageUrl: meal[index].imageUrl,
            title: meal[index].title,
            affordability: meal[index].affordability,
            complexity: meal[index].complexity,
            duration: meal[index].duration);
      }, itemCount: meal.length,)
    );
  }
}

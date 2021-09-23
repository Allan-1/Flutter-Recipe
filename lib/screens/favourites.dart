import 'package:flutter/material.dart';
import 'package:myrecipes/provider/meal_provider.dart';
import 'package:myrecipes/widgets/mealitem.dart';
import 'package:provider/provider.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final favouritemeal = Provider.of<MealProvider>(context).favouriteMeal;
    return Center(
      child: ListView.builder(itemBuilder: (ctx, index){
        return MealItem(id: favouritemeal[index].id,
            imageUrl: favouritemeal[index].imageUrl,
            title: favouritemeal[index].title,
            affordability: favouritemeal[index].affordability,
            complexity: favouritemeal[index].complexity,
            duration: favouritemeal[index].duration);
      }, itemCount: favouritemeal.length,)
    );
  }
}

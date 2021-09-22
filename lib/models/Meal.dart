
import 'package:flutter/foundation.dart';

enum Complexity { simple, Challenging, Hard }
enum Affordability {
  Affordable,
  Pricey,
  Expensive,
}

class Meal with ChangeNotifier {
  final String id;
  final String title;
  final String imageUrl;
  final List<String> categories;
  final List<String> ingredients;
  final List<String> steps;
  final Affordability affordability;
  final Complexity complexity;
  bool isFavourite;
  final int duration;

   Meal(
      {required this.id,
      required this.title,
      required this.imageUrl,
      required this.ingredients,
      required this.categories,
      required this.steps,
      required this.complexity,
      required this.affordability,
      this.isFavourite = false,
      required this.duration});

   void toggleIsFavourite(){
     isFavourite =!isFavourite;
     notifyListeners();
   }
}

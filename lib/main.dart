import 'package:flutter/material.dart';
import 'package:myrecipes/provider/meal_provider.dart';
import 'package:myrecipes/provider/provider.dart';
import 'package:myrecipes/screens/category_items_screen.dart';
import 'package:myrecipes/screens/recipe_screen.dart';
import 'package:myrecipes/screens/settings_screen.dart';
import 'package:myrecipes/screens/tabs.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => CategoryProvider()),
        ChangeNotifierProvider(create: (ctx) => MealProvider())
      ],
      child: MaterialApp(
        title: 'recipe',
        theme: ThemeData(
            primarySwatch: Colors.orange,
            canvasColor: Colors.black,
            accentColor: Colors.green,
            textTheme: TextTheme(
                headline6: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                bodyText1: TextStyle(color: Colors.white, fontSize: 18))),
        home: TabScreen(),
        routes: {
          CategoryItems.CategoryItemsRoute: (ctx) => CategoryItems(),
          RecipeScreen.recipeRoute: (ctx) => RecipeScreen(),
          Setting.settingRoute: (ctx) => Setting()
        },
      ),
    );
  }
}

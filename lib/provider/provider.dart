import 'package:flutter/material.dart';
import 'package:myrecipes/models/category.dart';

class CategoryProvider with ChangeNotifier {
  final List<Category> _categorydata = [
    Category(
        id: 'c7',
        title: 'Light and Lovely',
        image:
            'https://image.freepik.com/free-photo/top-view-creamy-delicious-cake-with-fresh-fruits-white-surface-birthday-tea-biscuit-sweet-cream-cake_140725-101608.jpg'),
    Category(
        id: 'c1',
        title: 'Italian',
        image:
            'https://image.freepik.com/free-photo/pizza-with-tomato-slices-pepperoni_114579-3235.jpg'),
    Category(
        id: 'c2',
        title: 'Indian',
        image:
            'https://image.freepik.com/free-photo/top-view-indian-food-with-copy-space_23-2148747659.jpg'),
    Category(
        id: 'c3',
        title: 'German',
        image:
            'https://image.freepik.com/free-photo/pork-hock-german-with-sauces-dark-background_1150-45507.jpg'),
    Category(
        id: 'c4',
        title: 'Asian',
        image:
            'https://image.freepik.com/free-photo/top-view-seafood-noodle-soup_23-2148249223.jpg'),
    Category(
        id: 'c11',
        title: 'African',
        image:
            'https://image.freepik.com/free-photo/person-getting-street-food_23-2149004349.jpg'),
    Category(
        id: 'c5',
        title: 'Exotic',
        image:
            'https://image.freepik.com/free-photo/colorful-mexican-menu_23-2147640353.jpg'),
    Category(
        id: 'c6',
        title: 'French',
        image:
            'https://image.freepik.com/free-photo/crispy-french-fries-with-ketchup-mayonnaise_1150-26588.jpg'),
    Category(
        id: 'c8',
        title: 'Hamburger',
        image:
            'https://image.freepik.com/free-photo/beef-burger-stuffed-with-mixed-ingreadients-black-board_114579-2601.jpg'),
    Category(
        id: 'c9',
        title: 'Breakfast',
        image:
            'https://image.freepik.com/free-photo/front-view-pancakes-with-red-black-currants-strawberries-black-plate-beige-napkin_141793-17749.jpg'),
    Category(
        id: 'c10',
        title: 'Summer',
        image:
            'https://image.freepik.com/free-photo/flat-lay-delicious-ripe-produces-composition_23-2148873980.jpg'),
    Category(
        id: 'c12',
        title: 'Cocktails',
        image:
            'https://image.freepik.com/free-photo/strawberry-passion-fruit-cocktails-drinking-glass_1203-9254.jpg')
  ];

  List<Category> get categorydata {
    return [..._categorydata];
  }

  // Future<void> getCategories() async {
  //   const url = "www.themealdb.com/api/json/v1/1/filter.php?c=Seafood";
  //   try{
  //     final response = await http.get(Uri.parse(url));
  //     print(response);
  //   }catch(error){
  //     throw error;
  //   }
  // }
}

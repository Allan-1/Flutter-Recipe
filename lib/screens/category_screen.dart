import 'package:flutter/material.dart';
import 'package:myrecipes/data/data.dart';
import 'package:myrecipes/widgets/categories.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        children: [
          ...Data.map((data){
            return Categories(data.id, data.title, data.image);
          }),
        ],
      );
  }
}

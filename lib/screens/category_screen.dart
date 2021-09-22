import 'package:flutter/material.dart';
import 'package:myrecipes/provider/provider.dart';

import 'package:myrecipes/widgets/categories.dart';
import 'package:provider/provider.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final categoryData = Provider.of<CategoryProvider>(context);
    final categoryItem = categoryData.categorydata;
    return GridView.builder(
      padding: EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) => ChangeNotifierProvider(
        create: (ctx) => categoryItem[index],
        child: Categories(),
      ),
      itemCount: categoryItem.length,
    );
  }
}

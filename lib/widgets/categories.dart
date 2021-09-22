import 'package:flutter/material.dart';
import 'package:myrecipes/models/category.dart';
import 'package:myrecipes/screens/category_items_screen.dart';
import 'package:provider/provider.dart';

class Categories extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final category = Provider.of<Category>(context);
    return GestureDetector(
      onTap: (){
        Navigator.of(context)
            .pushNamed(CategoryItems.CategoryItemsRoute, arguments: {
          'id': category.id,
          'title': category.title,
        });
      },
      child: Container(
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                category.image,
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
                top: 25,
                left: 0,
                child: Container(
                  width: 150,
                  padding: EdgeInsets.all(10),
                  color: Colors.black45,
                  child: Text(
                    category.title,
                    style: Theme.of(context).textTheme.bodyText1,
                    softWrap: true,
                    overflow: TextOverflow.fade,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

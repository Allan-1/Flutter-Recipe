import 'package:flutter/material.dart';
import 'package:myrecipes/screens/category_items_screen.dart';

class Categories extends StatelessWidget {
  final String id;
  final String title;
  final String imageurl;

  const Categories(this.id, this.title, this.imageurl);

  void selectCategory(BuildContext context) {
    Navigator.of(context)
        .pushNamed(CategoryItems.CategoryItemsRoute, arguments: {
      'id': id,
      'title': title,
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => selectCategory(context),
      child: Container(
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                imageurl,
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
                    title,
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

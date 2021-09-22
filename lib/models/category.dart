import 'package:flutter/foundation.dart';

class Category with ChangeNotifier{
  final String id;
  final String title;
  final String image;

  Category({required this.id, required this.title, required this.image});
}
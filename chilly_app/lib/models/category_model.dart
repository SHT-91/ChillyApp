import 'package:chilly_app/models/product_model.dart';

class Category {
  String name;
  List<Product> products;

  Category({
    this.name,
  });
}

List<Category> categories = [
  Category(
    name: 'Rice',
  ),
  Category(
    name: 'Fruits',
  ),
  Category(
    name: 'Sweets',
  ),
  Category(
    name: 'Nuts',
  ),
];

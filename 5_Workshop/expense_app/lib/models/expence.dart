import 'package:expense_app/models/category.dart';

class Expence {
  Category category;
  String description;
  double price;
  DateTime dateTime;

  Expence(this.category, this.description, this.price, this.dateTime);
}

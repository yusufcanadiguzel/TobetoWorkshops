import 'package:expense_app/models/category.dart';
import 'package:expense_app/models/expence.dart';

class ExpenceBank {
  List<Expence> expences = [
    Expence(
        Category.market, 'Basic needs.', 1000.0, DateTime.parse('2023-11-15')),
    Expence(Category.education, 'Udemy - Flutter Course', 150.0,
        DateTime.parse('2023-11-14')),
    Expence(Category.hobby, 'Video Game', 350, DateTime.parse('2023-11-13'))
  ];
}

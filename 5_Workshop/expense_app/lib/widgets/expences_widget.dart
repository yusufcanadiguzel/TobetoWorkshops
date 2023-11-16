import 'package:expense_app/data_access/expence_manager.dart';
import 'package:expense_app/models/category.dart';
import 'package:expense_app/models/expence.dart';
import 'package:flutter/material.dart';

ExpenseManager _expenseManager = ExpenseManager();

class Expences extends StatefulWidget {
  const Expences({super.key});

  @override
  State<Expences> createState() => _ExpencesState();
}

class _ExpencesState extends State<Expences> {
  ListTile createExpence(Expence expence) {
    var category = expence.category;

    return ListTile(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: BorderSide(color: Colors.black)),
      tileColor: Colors.white,
      leading: category == Category.market
          ? const Icon(Icons.shopping_cart, color: Colors.blueGrey, size: 40)
          : category == Category.hobby
              ? const Icon(Icons.videogame_asset,
                  color: Colors.blueGrey, size: 40)
              : const Icon(Icons.school, color: Colors.blueGrey, size: 40),
      title: Text(expence.description),
      subtitle: Text('Price: ${expence.price}   Date: ${expence.dateTime}'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.all(15),
        shrinkWrap: true,
        itemCount: 1,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ..._expenseManager.getExpances().map((e) => createExpence(e)),
              SizedBox(height: 10.0)
            ],
          );
        });
  }
}

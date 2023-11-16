import 'package:expense_app/widgets/add_expence_widget.dart';
import 'package:expense_app/widgets/expences_widget.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade900,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Center(child: Text('Expense App')),
        actions: [
          GestureDetector(
            child: Icon(Icons.add),
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return const ExpenceModal();
                  });
            },
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: const Text(
              'Expences',
              style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Expences(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:expense_app/models/category.dart';
import 'package:intl/intl.dart';

class ExpenseModal extends StatefulWidget {
  const ExpenseModal({super.key});

  @override
  State<ExpenseModal> createState() => _ExpenseModalState();
}

class _ExpenseModalState extends State<ExpenseModal> {
  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat('dd-MM-yyyy');
    DateTime selectedDate = DateTime.now();
    bool isDateSelected = false;
    void dateChanged() {
      isDateSelected = true;
    }

    String showDate() {
      if (isDateSelected) {
        return dateFormat.format(selectedDate).toString();
      }

      return 'Please select a date.';
    }

    return Container(
      color: Colors.white,
      child: Column(
        children: [
          ListTile(
            title: Text('Description'),
            subtitle: TextFormField(),
            tileColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          ListTile(
            title: Text('Date'),
            subtitle: Text(showDate()),
            trailing: OutlinedButton(
                onPressed: () async {
                  final DateTime? dateTime = await showDatePicker(
                    context: context,
                    initialDate: selectedDate,
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                  );

                  //TODO:Tarih seçildiğinde veri değişmesine rağmen ListTile'ın subtitle değeri değişmiyor.
                  if (dateTime != null) {
                    setState(() {
                      selectedDate = dateTime;
                      dateChanged();
                      showDate();
                    });
                  }
                },
                child: Icon(
                  Icons.calendar_month,
                  color: Colors.blueGrey,
                )),
            tileColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          DropdownButton(
              value: Category.values.first,
              items: Category.values.map((e) {
                return DropdownMenuItem<Category>(
                    value: e, child: Text(e.toString()));
              }).toList(),
              onChanged: null)
        ],
      ),
    );
  }
}

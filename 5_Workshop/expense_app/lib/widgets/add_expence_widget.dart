import 'package:flutter/material.dart';

class ExpenceModal extends StatelessWidget {
  const ExpenceModal({super.key});

  @override
  Widget build(BuildContext context) {
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
          )
        ],
      ),
    );
  }
}

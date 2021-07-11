import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
            ),
            IconButton(
              onPressed: () {
                print(titleController.text);
              },
              icon: Icon(Icons.bubble_chart),
              hoverColor: Colors.blue,
              splashRadius: 25,
              splashColor: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}
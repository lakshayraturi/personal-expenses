import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addText;
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  NewTransaction(this.addText);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          TextField(
            decoration: InputDecoration(labelText: 'Title'),
            controller: titleController,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Amount'),
            controller: amountController,
          ),
          ElevatedButton(
            onPressed: () {
              addText(
                titleController.text,
                double.parse(amountController.text),
              );
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.black),
            ),
            child: Text(
              'Add Transaction',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
        ]),
      ),
    );
  }
}

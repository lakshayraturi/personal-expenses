import 'package:flutter/material.dart';
import './widgets/transaction_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyAppHome(),
    );
  }
}

class MyAppHome extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  //String titleInput;
  //String amountInput;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personal Expenses'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              shadowColor: Colors.black87,
              child: Text(
                'Personal Expenses',
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              elevation: 5,
              //margin: EdgeInsets.all(5),
            ),
          ),
          Card(
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
                  //ElevatedButton(
                  // onPressed: () {}, child: Text('Add Transaction'))
                ],
              ),
            ),
          ),
          TransactionList()
        ],
      ),
    );
  }
}

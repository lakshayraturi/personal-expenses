import 'package:flutter/material.dart';
import './transaction.dart';

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
  final List<Transaction> transaction = [
    Transaction(
        id: 'GJFK45', title: 'Petrol', amount: 95.0, date: DateTime.now()),
    Transaction(
        id: 'GFGG95', title: 'Diesel', amount: 100.0, date: DateTime.now())
  ];
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
          Column(
            children: transaction.map((e) {
              return Card(
                  child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black87,
                        width: 2,
                      ),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      '\$${e.amount}',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        e.title,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        e.date.toString(),
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ));
            }).toList(),
          ),
        ],
      ),
    );
  }
}

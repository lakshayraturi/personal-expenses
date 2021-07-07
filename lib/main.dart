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

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personal Expenses'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 50,
            child: Card(
              color: Colors.black12,
              child: Text('Petrol'),
              elevation: 5,
              margin: EdgeInsets.all(5),
            ),
          ),
          Card(
            child: Text('Diesel'),
            elevation: 5,
            margin: EdgeInsets.all(10),
          ),
        ],
      ),
    );
  }
}

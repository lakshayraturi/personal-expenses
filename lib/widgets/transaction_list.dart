import 'package:flutter/material.dart';
import '../models/transaction.dart';

class TransactionList extends StatefulWidget {
  @override
  _TransactionListState createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  final List<Transaction> _userTransaction = [
    Transaction(
        id: 'GJFK45', title: 'Petrol', amount: 95.0, date: DateTime.now()),
    Transaction(
        id: 'GFGG95', title: 'Diesel', amount: 100.0, date: DateTime.now())
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: _userTransaction.map((e) {
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
    );
  }
}

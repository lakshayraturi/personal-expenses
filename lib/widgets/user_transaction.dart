import 'package:flutter/material.dart';
import './new_transaction.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransaction = [
    Transaction(
        id: 'GJFK45', title: 'Petrol', amount: 95.0, date: DateTime.now()),
    Transaction(
        id: 'GFGG95', title: 'Diesel', amount: 100.0, date: DateTime.now())
  ];

  void _addNewTransaction(String textTitle, double textAmount) {
    final newText = Transaction(
        title: textTitle,
        amount: textAmount,
        date: DateTime.now(),
        id: DateTime.now().toString());

    setState(() {
      _userTransaction.add(newText);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransaction)
      ],
    );
  }
}

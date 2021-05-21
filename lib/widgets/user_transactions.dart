import 'package:flutter/material.dart';

import './new_transaction.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 't1',
      amount: 700,
      title: 'Shoes',
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      amount: 500,
      title: 'Grocery',
      date: DateTime.now(),
    ),
  ];
  void _addNewTransaction(String title, double amount) {
    final newTx = Transaction(
      amount: amount,
      title: title,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}

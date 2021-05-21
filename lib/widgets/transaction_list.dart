import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';
import './user_transactions.dart';

class TransactionList extends StatelessWidget {
  List <Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactions.map((tx) {
        return Card(
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 15,
                ),
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Colors.purple,
                  width: 2,
                )),
                padding: EdgeInsets.all(10),
                child: Text(
                  'Rs.${tx.amount}',
                  style: TextStyle(
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tx.title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    DateFormat.yMMMMd().format(tx.date),
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}

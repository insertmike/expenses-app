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
      title: 'New Sunglasses',
      amount: 19.20,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Holiday',
      amount: 220,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(),
        TransactionList(),
      ],
    );
  }
}
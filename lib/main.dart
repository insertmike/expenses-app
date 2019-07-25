import 'package:flutter/material.dart';

import './transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expenses App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  // For debugging only
  final List<Transaction> transactions = [
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
    return Scaffold(
        appBar: AppBar(
          title: Text('Expenses App'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.blue,
                child: Text('CHART!'),
                elevation: 5,
              ),
            ),
            Column(
              children: <Widget>[
                  ...transactions.map((tx){
                    return Card(child: Text(tx.title),);
                  }).toList(),
              ],
            )
          ],
        ));
  }
}

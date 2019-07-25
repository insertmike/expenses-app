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
                ...transactions.map((tx) {
                  return Card(
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Text(
                            tx.amount.toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.purple,
                            ),
                          ),
                          margin: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.purple,
                              width: 2,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              tx.title,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              tx.date.toString(),
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                }).toList(),
              ],
            )
          ],
        ));
  }
}

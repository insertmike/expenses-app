import 'package:flutter/material.dart';

import './widgets/new_transaction.dart';
import './models/transaction.dart';
import './widgets/transaction_list.dart';

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

class HomePage extends StatefulWidget {
  // String titleInput;
  // String amountInput;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 
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

  void _addNewTransaction(String usrTitle, double usrAmount) {
    final newTransaction = Transaction(
        title: usrTitle,
        amount: usrAmount,
        date: DateTime.now(),
        id: DateTime.now().toString());

        setState(() {
         _userTransactions.add(newTransaction); 
        });
  }

  void _startAddNewTransaction(BuildContext context) {
      showModalBottomSheet(context: context, builder: (_){
        return NewTransaction(_addNewTransaction);
      },
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expenses App'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => _startAddNewTransaction(context),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.blue,
                child: Text('CHART!'),
                elevation: 5,
              ),
            ),
            TransactionList(_userTransactions),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _startAddNewTransaction(context),
      ),
    );
  }
}

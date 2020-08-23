import 'package:devloop_flutter/models/transaction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FinTrackerApp extends StatefulWidget {
  @override
  _FinTrackerAppState createState() {
    return _FinTrackerAppState();
  }
}

class _FinTrackerAppState extends State<FinTrackerApp> {
  final List<Transaction> _transactions = [
    Transaction(name: 'Food', amount: 1000.0, createdAt: DateTime.now()),
    Transaction(
        name: 'Transportation', amount: 1500.0, createdAt: DateTime.now()),
    Transaction(name: 'Housing', amount: 3000.0, createdAt: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Transactions'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Card(
              elevation: 5.0,
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'CHARTS',
                  style: null,
                ),
              ),
            ),
            Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'LIST OF TRANSACTIONS',
                      style: null,
                    ),
                  ),
                  Container(
                      child: Column(
                    children: _transactions.map((item) {
                      return Card(
                        child: Row(
                          children: <Widget>[
                            Container(
                                margin: EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 15.0),
                                padding: EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    border: Border.all(
                                        color: Colors.purple,
                                        width: 2.0,
                                        style: BorderStyle.solid)),
                                child: Text(item.amount.toString(),
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.purple))),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  item.name,
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(item.createdAt.toString(),
                                    style: TextStyle(
                                        fontSize: 12.0, color: Colors.grey))
                              ],
                            )
                          ],
                        ),
                      );
                    }).toList(),
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

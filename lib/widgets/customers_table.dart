import 'package:flutter/material.dart';

class CustomersTable extends StatelessWidget {
  final List<String> customers;

  CustomersTable(this.customers);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(children: customers.map((e) => null).toList()));
  }
}

import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final List<dynamic> list;
  final String label;
  final String route;

  CustomCard(this.list, this.label, this.route);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
      children: list.map((dynamic item) {
        return Card(child: null);
      }).toList(),
    ));
  }
}

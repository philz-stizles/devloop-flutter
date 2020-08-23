import 'package:flutter/material.dart';

class CustomList extends StatelessWidget {
  final List<dynamic> list;
  final String label;
  final String route;

  CustomList(this.list, this.label, this.route);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
      children: list.map((dynamic item) {
        return Card(
          child: item.name,
        );
      }).toList(),
    ));
  }
}

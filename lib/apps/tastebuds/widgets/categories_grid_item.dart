import 'package:devloop_flutter/apps/tastebuds/screens/meals_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoriesGridItem extends StatelessWidget {
  final String id;
  final Color color;
  final String title;
  CategoriesGridItem(this.id, this.title, this.color);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => MealsScreen(),
              settings: RouteSettings(arguments: {'id': id, 'title': title}))),
      child: Container(
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [color.withOpacity(0.7), color],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
              borderRadius: BorderRadius.circular(15.0)),
          child: Text(title)),
    );
  }
}

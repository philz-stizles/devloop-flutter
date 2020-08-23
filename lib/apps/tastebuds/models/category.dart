import 'package:flutter/material.dart';

class Category{
  final String id;
  final String title;
  final Color color;

  const Category({  // Note that const cannot be used with class that extend mixins
    @required this.id,
    @required this.title,
    this.color = Colors.orange
  });
}

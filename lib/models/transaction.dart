import 'package:flutter/material.dart';

class Transaction {
  final String id;
  final String name;
  final double amount;
  final DateTime createdAt;
  final DateTime updatedAt;

  // {} = Using named parameters
  // @required = To indicate required fields
  Transaction(
      {this.id,
      @required this.name,
      @required this.amount,
      @required this.createdAt,
      this.updatedAt});
}

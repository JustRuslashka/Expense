import 'package:flutter/material.dart';

class Transactions {
  final String id;
  final String title;
  final double price;
  final DateTime date;

  Transactions(
      {required this.date,
      required this.id,
      required this.price,
      required this.title});
}

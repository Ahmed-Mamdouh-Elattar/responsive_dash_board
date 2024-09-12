import 'package:flutter/material.dart';

class IncomeItemModel {
  final String title, value;
  final Color color;
  final int index;

  const IncomeItemModel({
    required this.title,
    required this.value,
    required this.color,
    required this.index,
  });
}

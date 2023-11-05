import 'package:flutter/material.dart';

class CarInfo {
  CarInfo({
    required this.id,
    required this.name,
    required this.model,
    required this.price,
    required this.imagePath,
    required this.color,
    this.isFavourite = false,
  });
  final String? id;
  final String? name;
  final String? model;
  final String? price;
  final String imagePath;
  final Color color;
  bool? isFavourite;
}

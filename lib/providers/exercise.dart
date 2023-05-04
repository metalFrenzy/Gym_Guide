import 'package:flutter/material.dart';

class Exercise with ChangeNotifier {
  final String id;
  final String title;
  final String description;
  final String imageUrl;
  bool isFavourite;

  Exercise({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    this.isFavourite = false,
  });

  void setFav(bool newValue) {
    isFavourite = newValue;
  }
}

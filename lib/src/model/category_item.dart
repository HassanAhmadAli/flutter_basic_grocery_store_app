import 'package:flutter/material.dart';

class CategoryModel {
  final String title;
  final String imageUrl;
  final String categoryId;

  CategoryModel({
    required this.categoryId,
    required this.title,
    required this.imageUrl,
  });
}

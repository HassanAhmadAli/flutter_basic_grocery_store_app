import 'package:flutter/material.dart';
import 'package:ptc_test/src/model/category_item.dart';

class ExploreRepository {
  static Future<List<CategoryModel>> get categories async => _exploreCategoryModels;
}

List<CategoryModel> _exploreCategoryModels = [
  CategoryModel(
    categoryId: 'fruit_and_vegetables',
    title: 'Fresh Fruit & Vegetable',
    imageUrl: 'assets/photo/pngfuel6.png',
  ),
  CategoryModel(
    categoryId: 'food_oil',
    title: 'Cooking Oil & Ghee',
    imageUrl: 'assets/photo/pngfuel7.png',
  ),
  CategoryModel(
    categoryId: 'meat',
    title: 'Meat & Fish',
    imageUrl: 'assets/photo/pngfuel9.png',
  ),
  CategoryModel(
    categoryId: 'bread',
    title: 'Backery & Snacks',
    imageUrl: 'assets/photo/pngfuel6_bread.png',
  ),
  CategoryModel(
    categoryId: 'milk_and_eggs',
    title: 'Dairy & Eggs',
    imageUrl: 'assets/photo/pngfuel.png',
  ),
  CategoryModel(
    categoryId: 'drinks',
    title: 'Beverages',
    imageUrl: 'assets/photo/pngfuel_coca.png',
  ),
];

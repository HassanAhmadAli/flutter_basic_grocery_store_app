import 'package:ptc_test/src/model/item.dart';

class CategoryRepository {
  static Future<List<ShopItem>> categoryItems(
      {required final String categoryId}) async {
    return Future.value(_categoryItems);
  }
}

List<ShopItem> _categoryItems = [
  ShopItem(
    imagePath: 'assets/photo/coke_diet.png',
    name: 'Diet Coke',
    massOrQuantity: '355ml',
    price: 1.99,
  ),
  ShopItem(
    imagePath: 'assets/photo/sprite_can.jpeg',
    name: 'Sprite Can',
    massOrQuantity: '325',
    price: .150,
  ),
  ShopItem(
    imagePath: 'assets/photo/grape_juice.jpeg',
    name: 'Apple & Gape Juice',
    massOrQuantity: '2L',
    price: 5.99,
  ),
  ShopItem(
    imagePath: 'assets/photo/orange_juice.png',
    name: 'Orange Juice',
    massOrQuantity: '2L',
    price: 8.99,
  ),
  ShopItem(
    imagePath: 'assets/photo/coka_cola.png',
    name: 'Coca Cola Can',
    massOrQuantity: '325ml',
    price: 4.99,
  ),
  ShopItem(
    imagePath: 'assets/photo/pepsi_can.jpeg',
    name: 'Pepsi Can',
    massOrQuantity: '330ml',
    price: 4.99,
  ),
];

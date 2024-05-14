import 'package:ptc_test/src/model/item.dart';

class CartRepository {
  static Future<Map<ShopItem, int>> get items async {
    return Future.value(_carItemsData);
  }
}

Map<ShopItem, int> _carItemsData = {
  ShopItem(
    imagePath: 'assets/photo/coke_diet.png',
    name: 'Diet Coke',
    massOrQuantity: '355ml',
    price: 1.99,
  ): 12,
  ShopItem(
    imagePath: 'assets/photo/sprite_can.jpeg',
    name: 'Sprite Can',
    massOrQuantity: '325',
    price: .150,
  ): 2,
  ShopItem(
    imagePath: 'assets/photo/grape_juice.jpeg',
    name: 'Apple & Gape Juice',
    massOrQuantity: '2L',
    price: 5.99,
  ): 5,
  ShopItem(
    imagePath: 'assets/photo/orange_juice.png',
    name: 'Orange Juice',
    massOrQuantity: '2L',
    price: 8.99,
  ): 9,
  ShopItem(
    imagePath: 'assets/photo/coka_cola.png',
    name: 'Coca Cola Can',
    massOrQuantity: '325ml',
    price: 4.99,
  ): 8,
  ShopItem(
    imagePath: 'assets/photo/pepsi_can.jpeg',
    name: 'Pepsi Can',
    massOrQuantity: '330ml',
    price: 4.99,
  ): 4,
};

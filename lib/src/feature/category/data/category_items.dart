import 'package:ptc_test/src/model/item.dart';

class CategoryRepository {
  static Future<List<ShopItem>> categoryItems(
      {required final String categoryId}) async {
    switch (categoryId) {
      case 'fruit_and_vegetables':
        return Future.value(vegetableAndFruitsItems);
      case 'milk_and_eggs':
        return Future.value(eggItems);
      case 'drinks':
        return Future.value(_beveragesItems);
      case 'food_oil':
      case 'meat':
      case 'bread':
      default:
        return Future.value([]);
    }
  }
}

List<ShopItem> _beveragesItems = [
  ShopItem(
    imagePath: 'assets/photo/coke_diet.png',
    name: 'Diet Coke',
    massOrQuantity: '355ml',
    price: 1.99,
  ),
  ShopItem(
    imagePath: 'assets/photo/sprite_can.png',
    name: 'Sprite Can',
    massOrQuantity: '325',
    price: .150,
  ),
  ShopItem(
    imagePath: 'assets/photo/grape_juice.png',
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
    imagePath: 'assets/photo/pepsi_can.png',
    name: 'Pepsi Can',
    massOrQuantity: '330ml',
    price: 4.99,
  ),
];

List<ShopItem> vegetableAndFruitsItems = [
  ShopItem(
    imagePath: 'assets/photo/peppr.png',
    name: 'Bell Pepper Red',
    massOrQuantity: '1kg',
    price: 4.99,
  ),
  ShopItem(
    imagePath: 'assets/photo/panana.png',
    name: 'Organic Bananas',
    massOrQuantity: '12kg',
    price: 3.00,
  ),
  ShopItem(
    imagePath: 'assets/photo/ginger.png',
    name: 'Ginger',
    massOrQuantity: '250g',
    price: 2.99,
  ),
];

List<ShopItem> eggItems = [
  ShopItem(
    imagePath: 'assets/photo/egg.png',
    name: 'Egg Chicken Red',
    massOrQuantity: '4pcs',
    price: 1.99,
  ),
];

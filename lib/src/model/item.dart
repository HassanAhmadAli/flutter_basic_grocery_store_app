enum ImageLocation { assets, locale }

class ShopItem {
  final String imagePath;
  final String name;
  final String massOrQuantity;
  final double price;
  final ImageLocation imageLocation;

  ShopItem({
    this.imageLocation = ImageLocation.assets,
    required this.imagePath,
    required this.name,
    required this.massOrQuantity,
    required this.price,
  });
}

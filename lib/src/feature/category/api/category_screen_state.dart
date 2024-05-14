part of 'category_screen_cubit.dart';

class CategoryScreenState extends Equatable {
  final String categoryId;
  final List<ShopItem>? shopItems;

  bool get isLoaded => shopItems != null;

  const CategoryScreenState({
    required this.categoryId,
    required this.shopItems,
  });

  @override
  List<Object> get props => [categoryId, shopItems ?? []];
}

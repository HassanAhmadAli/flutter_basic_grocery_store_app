import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ptc_test/src/feature/category/data/category_items.dart';
import 'package:ptc_test/src/model/item.dart';

part 'category_screen_state.dart';

class CategoryScreenCubit extends Cubit<CategoryScreenState> {
  CategoryScreenCubit({
    required final String categoryId,
  }) : super(
          CategoryScreenState(
            categoryId: categoryId,
            shopItems: null,
          ),
        ) {
    emitCategoryItems();
  }

  Future<void> emitCategoryItems() async {
    final shopItems =
        await CategoryRepository.categoryItems(categoryId: state.categoryId);
    emit(CategoryScreenState(
      categoryId: state.categoryId,
      shopItems: shopItems,
    ));
  }

  Future<void> addCategoryItem(ShopItem shopItem) async {
    if (state.shopItems != null && state.shopItems != <ShopItem>[]) {
      final resultShopItems = List.of(state.shopItems!);
      resultShopItems.add(shopItem);
      emit(CategoryScreenState(
        categoryId: state.categoryId,
        shopItems: resultShopItems,
      ));
      return;
    } else {
      emit(CategoryScreenState(
        categoryId: state.categoryId,
        shopItems: [shopItem],
      ));
    }
  }
}

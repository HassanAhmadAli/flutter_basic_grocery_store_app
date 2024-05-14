import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ptc_test/src/feature/cart/data/cart_items.dart';
import 'package:ptc_test/src/model/item.dart';

part 'cart_screen_state.dart';

class CartScreenCubit extends Cubit<CartScreenState> {
  CartScreenCubit() : super(CartScreenState(cartItems: {}));

  void emitCatItemsSync() async {
    final items = await CartRepository.items;
    emit(CartScreenState(cartItems: items));
  }

  void addItemLocal(
      {required final ShopItem shopItem, required final int amount}) {
    emit(
      state.copyWithAddedItemAmount(
        shopItem: shopItem,
        amount: amount,
      ),
    );
  }

  void removeItemAmountLocal(
      {required final ShopItem shopItem, required final int amount}) {
    emit(
      state.copyWithRemovedItemAmount(
        shopItem: shopItem,
        amount: amount,
      ),
    );
  }

  void removeItemLocal({required final ShopItem shopItem}) {
    emit(
      state.copyWithRemoveItem(
        shopItem: shopItem,
      ),
    );
  }
}

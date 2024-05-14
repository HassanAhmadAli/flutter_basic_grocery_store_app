part of 'cart_screen_cubit.dart';

class CartScreenState extends Equatable {
  CartScreenState({required this.cartItems})
      : shopItems = cartItems?.keys.toList(),
        amounts = cartItems?.values.toList();

  final Map<ShopItem, int>? cartItems;
  final List<ShopItem>? shopItems;
  final List<int>? amounts;

  bool get isLoaded => cartItems != null;

  CartScreenState copyWith({final Map<ShopItem, int>? cartItems}) {
    return CartScreenState(cartItems: cartItems ?? this.cartItems);
  }

  CartScreenState copyWithAddedItemAmount({
    required final ShopItem shopItem,
    required final int amount,
  }) {
    if (cartItems == null) {
      return CartScreenState(cartItems: {shopItem: amount});
    }

    var result = Map.of(cartItems!);
    if (result[shopItem] != null) {
      result[shopItem] = amount + result[shopItem]!;
    } else {
      result[shopItem] = amount;
    }
    return CartScreenState(cartItems: result);
  }

  CartScreenState copyWithRemovedItemAmount({
    required final ShopItem shopItem,
    required final int amount,
  }) {
    var result = Map.of(cartItems!);
    if (result[shopItem] != null) {
      var res = result[shopItem]! - amount;
      res = res > 0 ? res : 0;
      if (res == 0) {
        result.remove(shopItem);
      } else {
        result[shopItem] = res;
      }
    } else {
      return this;
    }

    return CartScreenState(cartItems: result);
  }

  CartScreenState copyWithRemoveItem({
    required final ShopItem shopItem,
  }) {
    var result = Map.of(cartItems!);
    result.remove(shopItem);
    return CartScreenState(cartItems: result);
  }

  @override
  List<Object> get props => [cartItems ?? {}];
}

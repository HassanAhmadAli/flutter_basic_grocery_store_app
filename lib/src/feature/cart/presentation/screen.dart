import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ptc_test/src/common_widgets/buttom_navigation_bar.dart';
import 'package:ptc_test/src/feature/cart/api/cart_screen_cubit.dart';
import 'package:ptc_test/src/feature/cart/presentation/widget/cart_item.dart';
import 'package:ptc_test/src/feature/cart/presentation/widget/go_to_checkout_button.dart';
import 'package:ptc_test/src/model/item.dart';

class CartScreen extends StatelessWidget {
  static const route = 'cart';

  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'My Cart',
          style: GoogleFonts.poppins().copyWith(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Builder(builder: (context) {
          final items = context.watch<CartScreenCubit>().state.cartItems;

          if (items == null) {
            return const CircularProgressIndicator();
          }
          if (items == {}) {
            return const Center(child: Text('Empty'));
          } else {
            return ListView.separated(
              itemCount: items.length + 1,
              itemBuilder: (context, index) {
                if (index == items.length) {
                  return const GoToCheckoutBotton();
                }
                return Center(
                    child: CartItemWidget(
                  shopItem:
                      context.watch<CartScreenCubit>().state.shopItems![index],
                  amount:
                      context.watch<CartScreenCubit>().state.amounts![index],
                ));
              },
              separatorBuilder: (BuildContext context, int index) {
                return const Divider();
              },
            );
          }
        }),
      ),
      bottomNavigationBar: BottomNaviationBar(
        currentIndex: 2,
      ),
    );
  }
}

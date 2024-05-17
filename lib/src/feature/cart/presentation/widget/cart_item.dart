import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ptc_test/src/const/colors.dart';
import 'package:ptc_test/src/feature/cart/api/cart_screen_cubit.dart';

import 'package:ptc_test/src/model/item.dart';

class CartItemWidget extends StatelessWidget {
  const CartItemWidget(
      {super.key, required this.shopItem, required this.amount});

  final int amount;
  final ShopItem shopItem;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        (shopItem.imageLocation == ImageLocation.assets)
            ? Image.asset(
                shopItem.imagePath,
                width: 100.w,
                height: 100.h,
              )
            : Image.file(
                File(shopItem.imagePath),
                width: 100.w,
                height: 100.h,
              ),
        const Spacer(),
        Column(
          children: [
            Text(shopItem.name),
            Text(shopItem.massOrQuantity),
            Row(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.remove,
                  ),
                  onPressed: () {
                    context
                        .read<CartScreenCubit>()
                        .removeItemAmountLocal(shopItem: shopItem, amount: 1);
                  },
                ),
                Text(amount.toString()),
                IconButton(
                  icon: const Icon(
                    Icons.add,
                    color: primaryGreen,
                  ),
                  onPressed: () {
                    context
                        .read<CartScreenCubit>()
                        .addItemLocal(shopItem: shopItem, amount: 1);
                  },
                ),
              ],
            )
          ],
        ),
        const Spacer(),
        Column(
          children: [
            IconButton(
                onPressed: () {
                  context
                      .read<CartScreenCubit>()
                      .removeItemLocal(shopItem: shopItem);
                },
                icon: const Icon(Icons.close)),
            Text('\$${(shopItem.price * amount).toStringAsFixed(2)}')
          ],
        )
      ],
    );
    ;
  }
}

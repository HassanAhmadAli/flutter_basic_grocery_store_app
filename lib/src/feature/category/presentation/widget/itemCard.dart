import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ptc_test/src/const/colors.dart';
import 'package:ptc_test/src/feature/cart/api/cart_screen_cubit.dart';
import 'package:ptc_test/src/model/item.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.shopItem});

  final ShopItem shopItem;

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Card(
        child: Container(
          // width: 200.w,
          // height: 100.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: const Color(0xFFededed)),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
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
              Text(
                shopItem.name,
                style: GoogleFonts.poppins().copyWith(),
              ),
              Text(
                '${shopItem.massOrQuantity}, Price',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins().copyWith(),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Gap(8.w),
                    Text(
                      '\$${shopItem.price.toString()}',
                      style: GoogleFonts.poppins().copyWith(),
                    ),
                    const Spacer(),
                    SizedBox.square(
                      dimension: 45.w,
                      child: IconButton(
                        onPressed: () {
                          context
                              .read<CartScreenCubit>()
                              .addItemLocal(shopItem: shopItem, amount: 1);
                          ScaffoldMessenger.of(context).clearSnackBars();
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('added To Cart')));
                        },
                        icon: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: primaryGreen,
                            borderRadius: BorderRadius.circular(
                              8.h,
                            ),
                          ),
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Gap(8.w),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

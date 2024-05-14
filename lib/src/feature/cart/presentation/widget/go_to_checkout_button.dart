import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ptc_test/src/common_widgets/primary_button.dart';
import 'package:ptc_test/src/feature/cart/api/cart_screen_cubit.dart';
import 'package:ptc_test/src/feature/cart/data/cart_items.dart';
import 'package:ptc_test/src/feature/order_accepted/presentation/screen.dart';

class GoToCheckoutBotton extends StatelessWidget {
  const GoToCheckoutBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return PrimaryButton(
      buttonTitle: 'Go To Checkout',
      onTap: () {
        double totalPrice = 0;
        final cartItems = context.read<CartScreenCubit>().state.cartItems!;
        for (final x in cartItems.keys) {
          totalPrice += x.price * cartItems[x]!;
        }
        showModalBottomSheet(
            backgroundColor: const Color(0xFFf2f3f2),
            context: context,
            builder: (context) {
              return LayoutBuilder(builder: (context, constrains) {
                return Padding(
                  padding: EdgeInsets.only(left: 20.w, top: 20.h),
                  child: ListView(
                    children: [
                      Row(children: [
                        Text(
                          'Checkout',
                          style: GoogleFonts.poppins().copyWith(
                            color: Colors.black,
                            fontSize: 24,
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.close,
                          ),
                        ),
                      ]),
                      Row(
                        children: [
                          Text(
                            'Delivary',
                            style: GoogleFonts.poppins().copyWith(
                                fontSize: 18,
                                color: Color(0xFF7C7C7C),
                                fontWeight: FontWeight.w400),
                          ),
                          Spacer(),
                          Text(
                            'Select Method',
                            style: GoogleFonts.poppins().copyWith(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                      const Divider(),
                      Row(
                        children: [
                          Text(
                            'Payment',
                            style: GoogleFonts.poppins().copyWith(
                                fontSize: 18,
                                color: Color(0xFF7C7C7C),
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                      const Divider(),
                      Row(
                        children: [
                          Text(
                            'Promo Code',
                            style: GoogleFonts.poppins().copyWith(
                                fontSize: 18,
                                color: Color(0xFF7C7C7C),
                                fontWeight: FontWeight.w400),
                          ),
                          const Spacer(),
                          Text(
                            'Pick Discount',
                            style: GoogleFonts.poppins().copyWith(fontSize: 16),
                          )
                        ],
                      ),
                      const Divider(),
                      Row(
                        children: [
                          Text(
                            'Total Cost',
                            style: GoogleFonts.poppins().copyWith(
                                fontSize: 18,
                                color: Color(0xFF7C7C7C),
                                fontWeight: FontWeight.w400),
                          ),
                          const Spacer(),
                          Text('\$$totalPrice')
                        ],
                      ),
                      const Divider(),
                      Text(
                        'By placing an order you agree to our Terms And Conditions',
                        style: GoogleFonts.poppins().copyWith(
                            fontSize: 14, color: const Color(0xFF7c7c7c)),
                      ),
                      Gap(8.h),
                      PrimaryButton(
                        buttonTitle: 'Place Order',
                        onTap: () {
                          Navigator.of(context).pushNamed(OrderAccepted.route);
                        },
                      )
                    ],
                  ),
                );
              });
            });
      },
    );
  }
}

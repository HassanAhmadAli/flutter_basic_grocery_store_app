import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ptc_test/src/common_widgets/primary_button.dart';
import 'package:ptc_test/src/feature/not_implemented/presentation/screen.dart';

class OrderAccepted extends StatelessWidget {
  static const route = 'orderAccepted';

  const OrderAccepted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(
            flex: 16,
          ),
          Image.asset(
            'assets/photo/order_complete.jpg',
            width: 269.08,
            height: 240.31,
          ),
          Text(
            'Your Order Has been Accepted',
            style: GoogleFonts.poppins()
                .copyWith(fontSize: 29, color: const Color(0xff181725)),
            textAlign: TextAlign.center,
          ),
          Text(
            'Your items has been placed and is on it’s way to being processed',
            style: GoogleFonts.poppins()
                .copyWith(color: const Color(0xff7C7C7C), fontSize: 16),
            textAlign: TextAlign.center,
          ),
          const Spacer(
            flex: 24,
          ),
          PrimaryButton(
            buttonTitle: 'Track Order',
            onTap: () {
              Navigator.of(context).pushNamed(NotImplemented.route);
            },
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(
              'Back to home',
              style: GoogleFonts.poppins().copyWith(
                  fontSize: 18,
                  color: const Color(0xff181725),
                  fontWeight: FontWeight.w400),
            ),
          ),
          Spacer(
            flex: 2,
          )
        ],
      ),
    );
  }
}

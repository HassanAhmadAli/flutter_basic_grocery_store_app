import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ptc_test/src/common_widgets/carrot_image.dart';
import 'package:ptc_test/src/const/colors.dart';

class   SplashScreen extends StatelessWidget {
  static const route = 'splash';

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryGreen,
      body: Center(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CarrotImage(),
              Center(
                child: Column(
                  children: [
                    const Spacer(),
                    Text(
                      'nectar ',
                      style: GoogleFonts.cabin()
                          .copyWith(fontSize: 30, color: Colors.white),
                    ),
                    Text(
                      'online groceriet',
                      style: GoogleFonts.poppins()
                          .copyWith(fontSize: 14, color: Colors.white),
                    ),
                    const Spacer(),
                  ],
                ),
              )
            ]),
      ),
    );
  }
}

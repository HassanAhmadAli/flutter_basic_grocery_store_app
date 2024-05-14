import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ptc_test/src/common_widgets/primary_button.dart';
import 'package:ptc_test/src/const/colors.dart';
import 'package:ptc_test/src/feature/explore/presentation/screen.dart';

import '../../../common_widgets/carrot_image.dart';

class OnBoardingScreen extends StatelessWidget {
  static const route = 'onBoarding';

  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            'assets/photo/8140.png',
          ),
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(
              flex: 20,
            ),
            const CarrotImage(),
            Text(
              'Welcom To Our Store',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins().copyWith(
                fontSize: 40,
                color: Colors.white,
              ),
            ),
            Text(
              'Ger your groceries in as fast as one hour',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins().copyWith(
                fontSize: 16,
                color: const Color(0xFCFCFCB2),
              ),
            ),
            const Gap(20),
            const Spacer(),
            PrimaryButton(
              buttonTitle: 'Get Started',
              onTap: () => Navigator.of(context)
                  .pushReplacementNamed(ExploreScreen.route),
            ),
            const Spacer(
              flex: 3,
            ),
          ],
        ),
      ),
    ));
  }
}

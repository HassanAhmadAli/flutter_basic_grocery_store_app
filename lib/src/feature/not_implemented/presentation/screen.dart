import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ptc_test/src/common_widgets/buttom_navigation_bar.dart';
import 'package:ptc_test/src/common_widgets/primary_button.dart';

class NotImplemented extends StatelessWidget {
  static const route = 'NotImplementedWithoutActions';

  const NotImplemented({
    super.key,
    this.index,
  });

  final int? index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Not Implemented',
          style: GoogleFonts.poppins().copyWith(fontSize: 24),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Coming Soon',
            style: GoogleFonts.poppins().copyWith(fontSize: 30),
          ),
          PrimaryButton(
            buttonTitle: 'Go Back',
            onTap: () => Navigator.of(context).pop(),
          )
        ],
      ),
      bottomNavigationBar: index == null
          ? null
          : BottomNaviationBar(
              currentIndex: index!,
            ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ptc_test/src/const/colors.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({super.key, this.onTap, required this.buttonTitle});

  final void Function()? onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: primaryGreen,
      ),
      child: ListTile(
        onTap: onTap,
        title: Text(
          buttonTitle,
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins().copyWith(
            fontSize: 16,
            color: const Color(0xFCFCFCB2),
          ),
        ),
      ),
    );
  }
}

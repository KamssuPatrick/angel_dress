import 'package:flutter/material.dart';

import 'colors.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyles {
  static const TextStyle headline1Black = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );

  static TextStyle bigColoredTitle = GoogleFonts.encodeSans(
    fontSize: 50,
    fontWeight: FontWeight.w700,
    color: AppColors.coloredTitle,
  );

  static TextStyle mediumColoredTitle = const TextStyle(
    fontSize: 30,
    fontFamily: 'EncodeSans',
    fontWeight: FontWeight.w700,
    color: AppColors.coloredTitle,
  );

  static TextStyle mediumTitleBlack = const TextStyle(
    fontSize: 18,
    fontFamily: 'EncodeSans',
    fontWeight: FontWeight.w400,
    color: AppColors.black,
  );

  static TextStyle mediumTitleGrey = const TextStyle(
    fontSize: 18,
    fontFamily: 'EncodeSans',
    fontWeight: FontWeight.w400,
    color: AppColors.gray555,
  );

  static TextStyle smallTitle = const TextStyle(
    fontSize: 14,
    fontFamily: 'EncodeSans',
    fontWeight: FontWeight.w400,
    color: AppColors.coloredTitle,
  );

  static TextStyle mediumTitle = const TextStyle(
    fontSize: 16,
    fontFamily: 'EncodeSans',
    fontWeight: FontWeight.w700,
    color: AppColors.coloredTitle,
  );

  static TextStyle mediumTitleProduit = const TextStyle(
    fontSize: 15,
    fontFamily: 'EncodeSans',
    fontWeight: FontWeight.w600,
    color: AppColors.coloredTitle,
  );

  static TextStyle selectedMediumTitlePrimary = const TextStyle(
    fontSize: 18,
    fontFamily: 'EncodeSans',
    fontWeight: FontWeight.w500,
    color: AppColors.primary,
  );

  static TextStyle mediumSubTitleBlack = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    fontFamily: 'EncodeSans',
    color: AppColors.subTitleBlackRgba,
  );


  static TextStyle welcomeTextButtonStyle = const TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w600,
      fontFamily: 'EncodeSans',
      color: Colors.white);

  static final BoxDecoration boxShadow = BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: AppColors.secondary.withOpacity(0.2),
        blurRadius: 4,
        offset: const Offset(0, 2),
      ),
    ],
  );

  static final ButtonStyle primaryButton = ElevatedButton.styleFrom(
    primary: AppColors.primary,
    textStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import '../../../config/colors.dart';
import '../../../generated/assets.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: AppColors.background,
      systemNavigationBarColor: AppColors.statusBarColor,
      statusBarBrightness: Brightness.dark,
    ));
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 60,
          ),
          Center(
            child: SvgPicture.asset(
              Assets.svgWelcomeEatingPage2,
              height: 208,
              width: 268,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: Text(
              "Control de votre alimentation et de votre activité physique",
              style: GoogleFonts.lexend(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: AppColors.coloredTitle,
              ),
              textAlign: TextAlign.center,
              maxLines: 2,
            ),
          ),
          Container(
            height: 10,
          ),

          const Padding(
            padding: EdgeInsets.only(left: 40, right: 40),
            child:  Text(
              "Enregistrer votre alimentation, ainsi que votre activité physique et observez comment cela affecte votre glycémie",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: AppColors.textIntroRgba,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

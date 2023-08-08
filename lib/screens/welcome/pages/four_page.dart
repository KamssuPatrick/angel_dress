import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../config/colors.dart';
import '../../../generated/assets.dart';
// ignore: depend_on_referenced_packages

class FourPage extends StatelessWidget {
  const FourPage({Key? key}) : super(key: key);

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
              "assets/svg/welcome_doctor_page3.svg",
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
              "Nos experts à votre écoute",
              style: GoogleFonts.lexend(
                fontSize: 24,
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
              "Médecins, nutritionistes, coach sportif... sont mis à votre disposition 24H/24 pour répondre à vos questions, vous prodiguer des conseils et veiller à votre bienêtre",
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

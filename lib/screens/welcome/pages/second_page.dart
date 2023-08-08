import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../config/colors.dart';
import '../../../generated/assets.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: AppColors.white,
      systemNavigationBarColor: AppColors.white,
      statusBarBrightness: Brightness.dark,
    ));
    return Scaffold(
      backgroundColor: AppColors.white,
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
            height: 30,
          ),
          Expanded(
            flex: 4,
            child: Container(
              height: 208,

              margin: const EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(30),

              ),
              child: Center(
                child: SvgPicture.asset(
                  Assets.svgWelcomeDiabetePage1,
                  height: 208,
                  width: 268,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Container(
                  height: 15,
                ),
                const Padding(
                  padding:  EdgeInsets.only(left: 20, right: 20),
                  child: Text(
                    "Various Collections of the latest products",
                    style:  TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  height: 10,
                ),

                const Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child:  Text(
                    "Suivez votre glycémie de manière régulière et précise, ce qui peut ",
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
          ),
        ],
      ),
    );
  }
}

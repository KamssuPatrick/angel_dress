import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../config/colors.dart';
import '../../config/styles.dart';
import '../../generated/assets.dart';

import '../login/login_page.dart';
import 'pages/first_page.dart';
import 'pages/four_page.dart';
import 'pages/second_page.dart';
import 'pages/third_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  late PageController _pageController;


  @override
  void initState() {
    _pageController = PageController()
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double progress =
    _pageController.hasClients ? (_pageController.page ?? 0) : 0;


    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: PageView(
              controller: _pageController,
              children: const [
                FirstPage(),
                SecondPage(),
                ThirdPage(),
                FourPage(),
              ],
            ),
          ),
          Positioned(
            bottom: 50,
            right: 20,
            left: 20,
            // left: 110,
            child: GestureDetector(
              onTap: (){
                if (_pageController.page == 0) {
                  _pageController.animateToPage(1,
                      duration: const Duration(milliseconds: 700),
                      curve: Curves.ease);
                }
                if(_pageController.page == 1)
                  {
                    _pageController.animateToPage(2,
                        duration: const Duration(milliseconds: 700),
                        curve: Curves.ease);
                  }

                if(_pageController.page == 2)
                {
                  _pageController.animateToPage(3,
                      duration: const Duration(milliseconds: 700),
                      curve: Curves.ease);
                }

                if(_pageController.page == 3)
                {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoginPage()));
                }

              },
              child: Container(
                width: progress < 1.0 ? 230 - progress * 60 : 170,
                height: 50,
                padding: const EdgeInsets.only(left: 8, right: 8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: AppColors.primary),
                child: Center(
                  child: FittedBox(
                    child:
                    progress < 1.0 ?  Stack(
                      fit: StackFit.passthrough,alignment: Alignment.center,
                      children: [
                        Opacity(
                          opacity: 1 - progress,
                          child:  Center(
                            child: Text("Lets get started",
                                style: AppStyles.welcomeTextButtonStyle),
                          ),
                        ),
                        Opacity(
                          opacity: progress,
                          child: Center(
                            child: Text("Continue",
                                style: AppStyles.welcomeTextButtonStyle),
                          ),
                        ),


                      ],
                    ) : _pageController.page! < 3 ? Text("Continue",
                        style: AppStyles.welcomeTextButtonStyle) : Text("Terminer",
                        style: AppStyles.welcomeTextButtonStyle),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 105,
            right: 100,
            left: 100,
            child: Center(
              child: SmoothPageIndicator(
                controller: _pageController,
                count: 4,
                effect:  ExpandingDotsEffect(
                  activeDotColor: AppColors.primary,
                  dotColor: AppColors.textIntroRgba.withOpacity(0.3),
                  dotHeight: 12,
                  radius: 20,
                  dotWidth: 20,
                  spacing: 6,
                  //verticalOffset: 50,
                  // jumpScale: 3,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

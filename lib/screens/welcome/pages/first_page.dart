import 'dart:async';

import 'package:flutter/material.dart';

import '../../../config/colors.dart';
import '../../../config/styles.dart';
import '../../../generated/assets.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> with SingleTickerProviderStateMixin{

  late AnimationController _fadeTextAnimationController ;
  late Animation _animation;

  @override
  void initState() {
    // TODO: implement initState
    _fadeTextAnimationController= AnimationController(
        vsync: this,
        duration: const Duration(seconds: 1)
    );
    Timer(const Duration(milliseconds: 500), () => _fadeTextAnimationController.forward());
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _fadeTextAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // _fadeTextAnimationController.forward();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Image.asset(
            Assets.authWelcomeBackground,
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Positioned(
            top: 60,
            left: 20,
            child:

            SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0.2,0),
                end: Offset.zero,
              ).animate(_fadeTextAnimationController),
              child: FadeTransition(
                opacity: _fadeTextAnimationController,
                child: Text(
                  "Bienvenue",
                  style: AppStyles.bigColoredTitle,
                ),
              ),
            ),
          ),
           Positioned(
            top: 140,
            left: 20,
            right: 150,
            child:

            SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0.2,0),
                end: Offset.zero,
              ).animate(_fadeTextAnimationController),
              child: FadeTransition(
                opacity: _fadeTextAnimationController,
                child: const Text(
                      "Nous sommes heureux de vous compter parmi nos utilisateurs. Cette application a été conçue pour vous aider à suivre votre taux de glycémie et à optimiser votre régime alimentaire pour mieux gérer votre diabète",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: AppColors.textWhiteText),
                      textAlign: TextAlign.left,
                    ),
              ),
            )

          ),

        ],
      ),
    );
  }
}

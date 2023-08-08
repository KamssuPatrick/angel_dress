import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../config/colors.dart';
import '../../config/styles.dart';
import '../../generated/assets.dart';
import '../login/login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {


  TextEditingController _nomCompletController = TextEditingController();
  TextEditingController _telephoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
      ),
      extendBodyBehindAppBar: true,
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          Container(
            height: 170,
            decoration: BoxDecoration(
              // color: AppColors.background,
              borderRadius: BorderRadius.circular(35),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    // color: Colors.red,
                    padding: EdgeInsets.only(left: 25),
                    child: Center(
                      child: Text(
                        "Créer mon compte",
                        style: AppStyles.mediumColoredTitle,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: SvgPicture.asset(
                    Assets.svgLoginHeader,fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Stack(alignment: Alignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(35),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 23,
                      ),

                      Text("Vers une vie plus saine !",
                          style: AppStyles.mediumTitleBlack),
                      Container(
                        height: 11,
                      ),
                      Text("Votre prise en charge débute dans un instant",
                          style: AppStyles.mediumSubTitleBlack),

                    ],
                  ),
                ),
                Align(

                  alignment: AlignmentDirectional.center, // <-- SEE HERE
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 25, right: 25),
                        padding: const EdgeInsets.only(left: 10, right: 20, top: 10, bottom: 10),
                        width: double.infinity,
                        height: 56,
                        decoration: BoxDecoration(
                            color: AppColors.background,
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          controller: _nomCompletController,

                          style: const TextStyle(
                            color: Color(0xffA9A9A9),
                            fontSize: 15,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w500,
                          ),
                          onChanged: (value) {
                          },
                          // autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: const InputDecoration(
                            // labelText: "Telephone",
                            hintText: "Nom complet",
                            hintStyle: TextStyle(
                                color:  Color(0xffA9A9A9)
                            ),
                            // floatingLabelBehavior: FloatingLabelBehavior.never,
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.person,
                              color: AppColors.primary,
                            ),

                          ),
                        ),
                      ),
                      Container(
                        height: 20,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 25, right: 25),
                        padding: const EdgeInsets.only(left: 10, right: 20, top: 10, bottom: 10),
                        width: double.infinity,
                        height: 56,
                        decoration: BoxDecoration(
                            color: AppColors.background,
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: TextFormField(
                          keyboardType: TextInputType.phone,
                          controller: _telephoneController,

                          style: const TextStyle(
                            color: Color(0xffA9A9A9),
                            fontSize: 15,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w500,
                          ),
                          onChanged: (value) {
                          },
                          // autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: const InputDecoration(
                            // labelText: "Telephone",
                            hintText: "Telephone",
                            hintStyle: TextStyle(
                                color:  Color(0xffA9A9A9)
                            ),
                            // floatingLabelBehavior: FloatingLabelBehavior.never,
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.phone_android_rounded,
                              color: AppColors.primary,
                            ),

                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Positioned(
                  bottom: 15,// <-- SEE HERE
                  child: Column(
                    children: [
                      Container(
                        width:  170,
                        height: 50,
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColors.blueRgba),
                        child: Center(
                          child: FittedBox(
                            child:
                            Text("OK",
                                style: AppStyles.welcomeTextButtonStyle),
                          ),
                        ),
                      ),
                      Container(
                        height: 10,
                      ),
                      RichText(
                        textAlign: TextAlign.left,
                        text: TextSpan(
                            style: const TextStyle(
                                fontSize: 15,
                                // fontFamily: "Inter",
                                color: Color(0xff060518)),
                            children: <TextSpan>[
                              const TextSpan(
                                text: "J’ai déjà un compte, ",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.textIntroRgba
                                ),
                              ),
                              TextSpan(
                                text: "me connecter.",
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    // Single tapped.
                                    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                                        const LoginPage()), (Route<dynamic> route) => false);
                                  },
                                style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.primary
                                ),
                              ),
                            ]),
                      )
                    ],
                  ),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}

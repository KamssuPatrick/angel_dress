import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../config/colors.dart';
import '../../config/styles.dart';
import '../../generated/assets.dart';
import '../home/home_page.dart';
import '../register_page/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {


  TextEditingController _telephoneController = TextEditingController();

  bool isEmailSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
      ),
      extendBodyBehindAppBar: false,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const Text("Login", style: AppStyles.headline1Black,),

              Container(
                height: 15,
              ),
              Text("Welcome back to the app", style: AppStyles.mediumTitleGrey,),

              Container(
                height: 25,
              ),

              Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        isEmailSelected = true;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Email", style: isEmailSelected ? AppStyles.selectedMediumTitlePrimary : AppStyles.mediumTitleGrey,),
                        Container(
                          height: 8,
                        ),
                        isEmailSelected ? Container(
                          width: 20,
                          height: 1.3,
                          color: AppColors.primary,
                        ) : Container()
                      ],
                    ),
                  ),

                  Container(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        isEmailSelected = false;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Phone Number", style: !isEmailSelected ? AppStyles.selectedMediumTitlePrimary : AppStyles.mediumTitleGrey,),
                        Container(
                          height: 8,
                        ),
                        !isEmailSelected ? Container(
                          width: 20,
                          height: 1.3,
                          color: AppColors.primary,
                        ) : Container()
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

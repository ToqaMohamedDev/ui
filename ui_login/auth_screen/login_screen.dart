import 'package:flutter/material.dart';

import '../../customs/custom_outlinebottom.dart';
import '../../customs/custom_text.dart';
import '../../customs/custom_text_field.dart';
import '../../resources/color_management.dart';

class Login extends StatelessWidget {
  Login({super.key});
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Center(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Form(
            key: globalKey,
            child: ListView(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              children: [
                SizedBox(
                    height: 200,
                    child: Image.asset("assets/images/logoSplash.png")),
                CustomTextFormFeld(
                  icon: Icons.email,
                  textInputType: TextInputType.text,
                  isStwich: false,
                  color: Colors.black,
                  colorr: Colors.black,
                  i: 5,
                  hinttext: "الايميل",
                  ii: 370,
                ),
                SizedBox(
                  height: 15,
                ),
                CustomTextFormFeld(
                    ii: 370,
                    icon: Icons.lock_open,
                    textInputType: TextInputType.text,
                    isStwich: false,
                    color: Colors.black,
                    colorr: Colors.black,
                    i: 5,
                    hinttext: "كلمة المرور",
                    suficon: Icons.remove_red_eye_outlined),
                SizedBox(
                  height: 15,
                ),
                CustomText(
                    name: "هل نسيت كلمة السر؟",
                    fontWeight: FontWeight.w500,
                    font: 16,
                    color: Colors.black,
                    alignmentGeometry: Alignment.centerRight),
                SizedBox(
                  height: 15,
                ),
                CustomOutLineWithIcon(
                    height: 50,
                    name: "تسجيل دخول",
                    iconData: Icons.login,
                    onPressed: () {

                    },
                    color: Colors.black),
                SizedBox(
                  height: 20,
                ),
                CustomText(
                    name: "أو",
                    fontWeight: FontWeight.bold,
                    font: 16,
                    color: Colors.black,
                    alignmentGeometry: Alignment.center),
                SizedBox(
                  height: 20,
                ),
                CustomOutLineWithIcon2(
                    height: 50,
                    name: "بواسطة جوجل",
                    iconData: FontAwesomeIcons.google,
                    onPressed: () {

                    },
                    color: ColorManager.whiteColor),
                SizedBox(
                  height: 20,
                ),
                CustomText(
                    name: "انشأ حساب جديد",
                    fontWeight: FontWeight.w600,
                    font: 16,
                    color: ColorManager.blackColor,
                    alignmentGeometry: Alignment.center,
                    onPressed: () {

                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

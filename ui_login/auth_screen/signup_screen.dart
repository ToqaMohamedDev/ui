import 'package:flutter/material.dart';

import '../../customs/custom_outlinebottom.dart';
import '../../customs/custom_text.dart';
import '../../customs/custom_text_field.dart';

class SignupScreen extends StatelessWidget {
   SignupScreen({super.key});
  GlobalKey<FormState>globalKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
        }, icon: Icon(Icons.arrow_back_ios,color: Colors.black,)),
      ),
      body: Form(
        key:globalKey ,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Center(
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: ListView(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                children: [
                  SizedBox(
                      height: 200,
                      child: Image.asset("assets/images/logoSplash.png")),
                  CustomTextFormFeld(ii: 370,icon: Icons.person,textInputType: TextInputType.text, isStwich: false,color: Colors.black,colorr: Colors.black,i: 5,hinttext: "الاسم",),
                  SizedBox(height: 15,),
                  CustomTextFormFeld(ii: 370,icon: Icons.email,textInputType: TextInputType.text, isStwich: false,color: Colors.black,colorr: Colors.black,i: 5,hinttext: "الايميل",),
                  SizedBox(height: 15,),
                  CustomTextFormFeld(ii: 370,icon: Icons.lock_open,textInputType: TextInputType.text, isStwich: false,color: Colors.black,colorr: Colors.black,i: 5,hinttext: "كلمة المرور",suficon: Icons.remove_red_eye_outlined),
                  SizedBox(height: 30,),
                  CustomOutLineWithIcon(height: 50,name: "حساب جديد", iconData: Icons.login, onPressed: (){
                  }, color: Colors.black),
                  SizedBox(height: 20,),
                  CustomText(name: "أو", fontWeight: FontWeight.bold, font: 16,color: Colors.black,alignmentGeometry: Alignment.center),
                  SizedBox(height: 20,),
                  CustomOutLineWithIcon2(
                      height: 50,
                      name: "بواسطة جوجل",
                      iconData: FontAwesomeIcons.google,
                      onPressed: (){
                      },
                      color: Colors.white),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

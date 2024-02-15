import 'package:seller_app/customs/custom_text.dart';
import 'package:flutter/material.dart';
import '../resources/color_management.dart';

class MenuCustom extends StatelessWidget {
   MenuCustom({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
      ),
      child: Container(
        alignment: Alignment.center,
        width: 335,
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        height: 55,
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              dropdownColor:ColorManager.whiteColor,
              value: "v",
              icon:  Expanded(child: Container(
                  alignment: Alignment.centerLeft,
                  child: Icon(Icons.arrow_drop_down,color:ColorManager.blackColor,))),
              elevation: 16,
              style:  TextStyle(color:ColorManager.blackColor,fontSize: 14,fontWeight: FontWeight.w600),
              underline: Container(
                height: 2,
                color:  ColorManager.blackColor,
              ),
              onChanged: (String? newValue) {

              },
              items: <String>['نوع المنتج','رجالي','نسائي','احذية','نظارات','ساعات',]
                  .map<DropdownMenuItem<String>>((String value) {
                return  DropdownMenuItem<String>(
                  value: value,
                  child: CustomText(name: value, fontWeight: FontWeight.w600,alignmentGeometry: Alignment.centerRight, font: 14),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}

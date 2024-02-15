import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class CustomTextFormFeld extends StatefulWidget {
  final String? hinttext;
  final IconData? icon;
  final double? i;
  final Color? color;
  final Color? colorr;
  final IconData? suficon;
  final double? ii;
  final Function? onChange;
  final GestureTapCallback ? onClick;
  final GestureTapCallback ? cha;
  final TextEditingController? controller;
  final TextInputType textInputType;
  final TextDirection? textDirection;
  final bool isStwich;
 const  CustomTextFormFeld({Key? key, this.hinttext,
    this.icon, this.suficon, this.onClick, this.cha,
    this.controller, this.color, this.colorr,
    required this.textInputType, required this.ii, this.i,
    this.onChange, this.textDirection,
    required this.isStwich
  }) : super(key: key);

  @override
  _CustomTextFormFeldState createState() => _CustomTextFormFeldState();
}

class _CustomTextFormFeldState extends State<CustomTextFormFeld> {
  bool cc = true;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: widget.ii,
      child: TextFormField(
        onChanged: (value) =>widget.onChange!(value),
        validator: ( val) {
          if(widget.hinttext == "البريد الالكتروني") {
            if(val!.isEmpty) {
              return "ادخل البريد الالكتروني";
            }
            else if(!RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$').hasMatch(val)) {
              return "البريد الالكتروني غير صالح";
            }
          }else if(val!.length<6&&val.isEmpty&&widget.hinttext=="كلمة المرور") {
            return "ادخل ست احرف علي الاقل";
          }else if(val.length<6&&val.isEmpty&&widget.hinttext=="تأكيد كلمة المرور") {
            return "ادخل ست احرف علي الاقل";
          }else if(val.isEmpty&&widget.hinttext=="الاسم الاول") {
            return "ادخل الاسم الاول";
          } else if(val.isEmpty&&widget.hinttext=="الاسم الاخير") {
            return "ادخل الاسم الاخير";
          } else if(val.isEmpty&&widget.hinttext=="العنوان") {
            return "ادخل العنوان";
          }else if(val.isEmpty&&widget.hinttext=="مكان وسنة الولاده") {
            return "ادخل مكان وسنة الولاده";
          }else if(val.isEmpty&&widget.hinttext=="رقم الهوية") {
            return "ادخل رقم الهوية";
          }else if(val.isEmpty&&widget.hinttext=="المهنة") {
            return "ادخل المهنة";
          }else if(val.isEmpty&&widget.hinttext=="البريد الالكتروني") {
            return "ادخل العنوان";
          }else if(val.isEmpty&&widget.hinttext=="أضف الي المفضله") {
            return "أضف الي المفضله";
          }if(val.isEmpty&&widget.hinttext=="البيان")
          {
            return "ادخل البيان";
          }if(val.isEmpty&&widget.hinttext=="المبلغ")
          {
            return "ادخل المبلغ";
          }

        },
        readOnly: widget.isStwich,
        obscureText: (widget.hinttext=="كلمة المرور"&&cc) ||(widget.hinttext=="تأكيد كلمة المرور"&&cc)?true:false ,
        controller: widget.controller,
        maxLines:widget.hinttext=="كلمة المرور"||widget.hinttext=="تأكيد كلمة المرور"?1:null,
        textDirection: widget.textDirection,
        style: TextStyle(color: Theme.of(context).colorScheme.primary,fontSize: 16,fontWeight: FontWeight.w600),
        cursorColor: Theme.of(context).colorScheme.primary,
        keyboardType: widget.textInputType,
        enabled: true,
        decoration: InputDecoration(
          isDense: true,
          hintText: widget.hinttext,
          hintStyle:  TextStyle(color: Theme.of(context).colorScheme.primary.withOpacity(0.3),fontSize: 16,fontWeight: FontWeight.bold),
          prefixIcon: Icon(widget.icon,color: Theme.of(context).colorScheme.primary.withOpacity(0.3),size: 20),
          suffixIcon:widget.hinttext=="كلمة المرور"||widget.hinttext=="تأكيد كلمة المرور"? InkWell(
              onTap: ()
              {
                setState(() {
                  cc=!cc;
                });
              },
              child: Icon(widget.suficon,size: 20,color: Theme.of(context).colorScheme.primary.withOpacity(0.3))):null,
          enabledBorder: OutlineInputBorder(
            borderSide:  BorderSide(color: widget.color!,width: 1),
            borderRadius: BorderRadius.circular( widget.i!.toDouble()),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: widget.color!,width: 1),
            borderRadius: BorderRadius.circular( widget.i!.toDouble()),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: widget.color!,width: 1),
            borderRadius: BorderRadius.circular( widget.i!.toDouble()),
          ),
        ),
      ),
    );

  }
}


class CustomTextFormFeldpay extends StatefulWidget {
  final String? hinttext;
  final GestureTapCallback? callback;
  final String? label;
  final IconData? icon;
  final double? i;
  final Color? color;
  final Color? colorr;
  final IconData? suficon;
  final double? ii;
  final Function? onChange;
  final GestureTapCallback ? onClick;
  final GestureTapCallback ? cha;
  final TextEditingController? controller;
  final TextInputType textInputType;
  final TextDirection? textDirection;
  final bool isStwich;
  CustomTextFormFeldpay({Key? key, this.hinttext,this.label,
    this.callback,
    this.icon, this.suficon, this.onClick, this.cha,
    this.controller, this.color, this.colorr,
    required this.textInputType, required this.ii, this.i,
    this.onChange, this.textDirection,
    required this.isStwich
  }) : super(key: key);

  @override
  _CustomTextFormFeldpayState createState() => _CustomTextFormFeldpayState();
}
class _CustomTextFormFeldpayState extends State<CustomTextFormFeldpay> {
  bool cc = true;
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: widget.ii,
      child: TextFormField(
        onChanged: (value) =>widget.onChange!(value),
        validator: ( val)
        {
          if(val!.isEmpty&&widget.hinttext=="البريد الالكتروني")
          {
            return "ادخل البريد الالكتروني";
          }else if(val.length<6&&val.isEmpty&&widget.hinttext=="كلمة المرور")
          {
            return "ادخل ست احرف علي الاقل";
          }else if(val.length<6&&val.isEmpty&&widget.hinttext=="تأكيد كلمة المرور")
          {
            return "ادخل ست احرف علي الاقل";
          }if(val.isEmpty&&widget.hinttext=="المبلغ")
          {
            return "ادخل المبلغ";
          }if(val.isEmpty&&widget.hinttext=="حساب الوجهة")
          {
            return "ادخل حساب الوجهة";
          }if(val.isEmpty&&widget.hinttext=="حساب الوجهة")
          {
            return "ادخل حساب الوجهة";
          }if(val.isEmpty&&widget.hinttext=="البيان")
          {
            return "ادخل البيان";
          }

        },
        readOnly: widget.isStwich,
        obscureText: (widget.hinttext=="كلمة المرور"&&cc) ||(widget.hinttext=="تأكيد كلمة المرور"&&cc)?true:false ,
        controller: widget.controller,
        maxLines:widget.hinttext=="كلمة المرور"||widget.hinttext=="تأكيد كلمة المرور"?1:null,
        textDirection: widget.textDirection,
        style: TextStyle(color: Theme.of(context).colorScheme.primary,fontSize: 16,fontWeight: FontWeight.w600),
        cursorColor: Theme.of(context).colorScheme.primary,
        keyboardType: widget.textInputType,
        enabled: true,
        decoration: InputDecoration(
          hintText: widget.hinttext,
          labelText: widget.label,
          labelStyle:  TextStyle(color: Theme.of(context).colorScheme.primary.withOpacity(0.3),fontSize: 12,fontWeight: FontWeight.bold),
          hintStyle:  TextStyle(color: Theme.of(context).colorScheme.primary.withOpacity(0.3),fontSize: 12,fontWeight: FontWeight.bold),
          suffixIcon:GestureDetector(
              onTap:widget.callback,
              child: Icon(widget.suficon,size: 17,color: Theme.of(context).colorScheme.primary.withOpacity(0.3))),
          enabledBorder: OutlineInputBorder(
            borderSide:  BorderSide(color: widget.color!,width: 1),
            borderRadius: BorderRadius.circular( widget.i!.toDouble()),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: widget.color!,width: 1),
            borderRadius: BorderRadius.circular( widget.i!.toDouble()),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: widget.color!,width: 1),
            borderRadius: BorderRadius.circular( widget.i!.toDouble()),
          ),
        ),
      ),
    );

  }
}


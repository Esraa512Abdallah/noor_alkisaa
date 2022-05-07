import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:noor_alkisaa/helper/constance.dart';
import 'package:noor_alkisaa/helper/sized_config.dart';
import 'package:noor_alkisaa/view_model/app_local.dart';

class CustomTextFeildWithLable extends StatelessWidget {
  final bool obscureText;

  final String lableText;
  final String hintText;

  final Color? iconcolor;

  final Widget suffixWidget;

  late final TextInputType keyboardType;

  //
  late final Function(String?)? onClick;

  //

  CustomTextFeildWithLable({
    required this.suffixWidget,
    this.iconcolor,
    required this.lableText,
    required this.obscureText,
    required this.onClick,
    required this.keyboardType,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    String? _errorMessage(String str) {
      if (lableText == AppLocal.of(context).getTranslated('رقم الجوال')) {
        return AppLocal.of(context).getTranslated('الرجاء ادخال رقم الجوال');
      } else if (lableText ==
          AppLocal.of(context).getTranslated('كلمة المرور')) {
        return AppLocal.of(context).getTranslated('الرجاء ادخال كلمه المرور');
      } else if (lableText ==
          AppLocal.of(context).getTranslated('تأكيد كلمة المرور')) {
        return AppLocal.of(context).getTranslated('الرجاء تاكيد كلمه المرور');
      } else if (lableText ==
          AppLocal.of(context).getTranslated('البريد الالكتروني')) {
        return AppLocal.of(context)
            .getTranslated('الرجاء ادخال البريد الالكترونى');
      } else if (lableText == AppLocal.of(context).getTranslated('الاسم')) {
        return AppLocal.of(context).getTranslated('الرجاء ادخال الاسم');
      }
    }

    SizeConfig().init(context);

    // TODO: implement build
    return Container(
      child: TextFormField(
        autofocus: true,
        onSaved: onClick,
        validator: (value) {
          if (value!.isEmpty) {
            return _errorMessage(lableText);
          }
        },
        cursorColor: Colors.grey,
        cursorHeight: 30,
        obscureText: obscureText,
        obscuringCharacter: "*",
        keyboardType: keyboardType,
        decoration: InputDecoration(
          alignLabelWithHint: true,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: hintText,
          suffixIcon: Container(
            child: suffixWidget,
          ),
          errorStyle: Theme.of(context).textTheme.bodyText1,
          labelStyle: Theme.of(context).textTheme.bodyText1,
          labelText: lableText,
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(

            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(
              width: 1.8,
              color: primaryGreyColor2,
            ),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
              borderSide: BorderSide(
                color: Colors.grey,
              )),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(color: Colors.black, width: 1.0),
          ),
        ),
        style: TextStyle(color: Colors.grey),
      ),
    );
  }
}

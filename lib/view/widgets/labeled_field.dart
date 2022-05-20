import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:noor_alkisaa/helper/constance.dart';
import 'package:noor_alkisaa/helper/sized_config.dart';
import 'package:noor_alkisaa/controller/app_local.dart';

class CustomTextFieldWithLabel extends StatelessWidget {
  final bool obscureText;

  final String labelText;
  final String hintText;

  final Color? iconColor;

  final Widget suffixWidget;

  final String? errorMessage;

  final TextInputType keyboardType;

  //
  final Function(String?)? onSaved;

  //

  CustomTextFieldWithLabel({
    required this.suffixWidget,
    this.iconColor,
    required this.labelText,
    required this.obscureText,
    required this.onSaved,
    required this.keyboardType,
    required this.hintText,
    this.errorMessage,
  });

  @override
  Widget build(BuildContext context) {
    String? _errorMessage(String str) {
      if (labelText == AppLocal.of(context).getTranslated('رقم الجوال')) {
        return AppLocal.of(context).getTranslated('الرجاء ادخال رقم الجوال');
      } else if (labelText ==
          AppLocal.of(context).getTranslated('كلمة المرور')) {
        return AppLocal.of(context).getTranslated('الرجاء ادخال كلمه المرور');
      } else if (labelText ==
          AppLocal.of(context).getTranslated('تأكيد كلمة المرور')) {
        return AppLocal.of(context).getTranslated('الرجاء تاكيد كلمه المرور');
      } else if (labelText ==
          AppLocal.of(context).getTranslated('البريد الالكتروني')) {
        return AppLocal.of(context)
            .getTranslated('الرجاء ادخال البريد الالكترونى');
      } else if (labelText == AppLocal.of(context).getTranslated('الاسم')) {
        return AppLocal.of(context).getTranslated('الرجاء ادخال الاسم');
      }
    }

    SizeConfig().init(context);

    // TODO: implement build
    return Container(
      child: TextFormField(

        onSaved: onSaved,
        validator: (value) {
          if (value!.isEmpty) {
            return _errorMessage(labelText);
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
          labelText: labelText,
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

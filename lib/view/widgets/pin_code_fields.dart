import 'dart:async';

import 'package:flutter/material.dart';
import 'package:noor_alkisaa/helper/sized_config.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCodeField extends StatefulWidget {
  PinCodeField({Key? key}) : super(key: key);

  @override
  State<PinCodeField> createState() => _PinCodeFieldState();
}

class _PinCodeFieldState extends State<PinCodeField> {

  TextEditingController textEditingController = TextEditingController();
  // ..text = "123456";

  // ignore: close_sinks
  StreamController<ErrorAnimationType>? errorController;

  bool hasError = false;

  String currentText = "";

  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

   @override
   void dispose() {
     errorController!.close();

     super.dispose();
   }

  Widget build(BuildContext context) {

    SizeConfig().init(context);

    return  Container(
      child: PinCodeTextField(
        hintCharacter: "_",
        hintStyle: TextStyle(
            color: Colors.grey.shade400, fontSize: 15.0),
        appContext: context,
        pastedTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        length: 4,
        animationType: AnimationType.fade,
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(9.0),
          fieldHeight: SizeConfig.defaultSize! * 6.0,
          fieldWidth: SizeConfig.defaultSize! * 5.5,
          activeFillColor: Colors.white,
          disabledColor: Colors.grey.shade300,
          activeColor: Colors.grey.shade300,
          inactiveColor: Colors.grey.shade300,
          selectedColor: Colors.grey.shade300,
          selectedFillColor: Colors.grey.shade300,
        ),
        cursorColor: Colors.black,
        animationDuration: const Duration(milliseconds: 300),
        errorAnimationController: errorController,
        controller: textEditingController,
        keyboardType: TextInputType.number,
        onChanged: (value) {
          debugPrint(value);
          setState(() {
            currentText = value;
          });
        },
      ),
    );
  }
}

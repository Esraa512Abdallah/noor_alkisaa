import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:noor_alkisaa/helper/constance.dart';
import 'package:noor_alkisaa/helper/sized_config.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CustomMakingFeild extends StatefulWidget {
   CustomMakingFeild({Key? key}) : super(key: key);

  @override
  State<CustomMakingFeild> createState() => _CustomMakingFeildState();
}

class _CustomMakingFeildState extends State<CustomMakingFeild> {
  TextEditingController textEditingController = TextEditingController();

  StreamController<ErrorAnimationType>? errorController;

  bool hasError = false;

  String currentText = "";

  @override
  Widget build(BuildContext context) {

    SizeConfig().init(context);

    return Row(
      children: [
        Container(
          child: PinCodeTextField(
            hintCharacter: "-",
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
          )
        ),
      ],
        );
  }
}

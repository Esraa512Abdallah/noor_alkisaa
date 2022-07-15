import 'dart:async';

import 'package:flutter/material.dart';
import 'package:noor_alkisaa/helper/sized_config.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../controller/app_local.dart';
import 'count_down_timer.dart';
import 'custom_gradient_button.dart';

class ActivePhoneDialog extends StatefulWidget {
  @override
  State<ActivePhoneDialog> createState() => _ActivePhoneDialogState();
}

class _ActivePhoneDialogState extends State<ActivePhoneDialog> {

  String? _currentSelectedValue;

  final GlobalKey<FormState> _formkey1 = GlobalKey();

  TextEditingController textEditingController = TextEditingController();

  StreamController<ErrorAnimationType>? errorController;

  //
  bool hasError = false;

  //
  String currentText = "";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      //this right here
      child: Container(
        padding: EdgeInsets.only(
          bottom: SizeConfig.defaultSize! * 2.0,
        ),
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top:  SizeConfig.defaultSize!*0.3,
                      right:  SizeConfig.defaultSize!*0.3,
                      left:  SizeConfig.defaultSize!*0.3,
                    ),
                    child: IconButton(
                      icon:  Icon(
                        Icons.cancel,
                        color: Colors.grey[400],
                        size: 32,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
              Image.asset("assets/images/layer3.png"),
              SizedBox(
                height: SizeConfig.defaultSize! * 1.5,
              ),
              Text(
                AppLocal.of(context)
                    .getTranslated("ادخال الكود المرسل على جوالك"),
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: "Dubai",
                    color: Colors.grey,
                    fontWeight: FontWeight.w500),
              ),
              const Text(
                "0123456789",
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: "Dubai",
                    color: Colors.grey,
                    fontWeight: FontWeight.w500),
              ),

              Form(
                key: _formkey1,
                child: Padding(
                  padding: EdgeInsets.only(
                    right: SizeConfig.defaultSize! * 2.0,
                    left: SizeConfig.defaultSize! * 2.0,
                    top: SizeConfig.defaultSize! * 1.0,
                  ),
                  child: PinCodeTextField(
                    hintCharacter: "-",
                    hintStyle:
                        TextStyle(color: Colors.grey.shade400, fontSize: 20.0,),
                    appContext: context,
                    pastedTextStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                    textStyle: TextStyle(
                      color: Colors.grey.shade400,
                    ),
                    length: 4,
                    animationType: AnimationType.fade,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(9.0),
                      fieldHeight: SizeConfig.defaultSize! * 5.5,
                      fieldWidth: SizeConfig.defaultSize! * 6.0,
                      activeFillColor: Colors.white,
                      disabledColor: Colors.grey.shade300,
                      activeColor: Colors.grey.shade300,
                      inactiveColor: Colors.grey.shade300,
                      selectedColor: Colors.grey.shade300,
                      selectedFillColor: Colors.grey.shade300,
                      inactiveFillColor: Colors.grey.shade500,
                    ),
                    cursorColor: Colors.grey.shade400,
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
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.defaultSize! * 2.5),
                child:Text(
                  hasError
                      &&
                          _formkey1.currentState!.validate() &&
                          currentText.length != 4
                      ? AppLocal.of(context).getTranslated(
                          "الرجاء إدخال الرمز المرسل إلى بريدك الإلكتروني")
                      : "",
                  style: const TextStyle(
                      color: Colors.red,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Dubai"),
                ),
              ),
              SizedBox(
                height: hasError &&
                        _formkey1.currentState!.validate() &&
                        currentText.length != 4
                    ? SizeConfig.defaultSize! * 1.8
                    : SizeConfig.defaultSize! * 0.0,
              ),

              Padding(
                padding: EdgeInsets.only(bottom: SizeConfig.defaultSize! * 1.5),
                child: CountDownTimer(),
              ),

              CustomgradentButton(
                  buttonWidth: SizeConfig.screenWidth! / 1.4,
                  buttonheight: SizeConfig.defaultSize! * 5.0,
                  onPressed: () {
                    if (_formkey1.currentState!.validate() &&
                        currentText.length != 4) {
                      errorController!.add(ErrorAnimationType.shake);
                      _formkey1.currentState!
                          .save(); // Triggering error shake animation
                      setState(() => hasError = true);
                      print("true");
                    } else {
                      print("false");
                      setState(
                        () {
                          hasError = false;
                        },
                      );
                      textEditingController.clear();
                    }
                    // textEditingController.clear();
                  },
                  child: Center(
                    child:  Text(
                      AppLocal.of(context).getTranslated("تاكيد"),
                      style: Theme.of(context).textTheme.button,
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

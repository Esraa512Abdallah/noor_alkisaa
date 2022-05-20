import 'dart:async';

import 'package:flutter/material.dart';
import 'package:noor_alkisaa/helper/sized_config.dart';
import 'package:noor_alkisaa/view/widgets/custom_gradient_button.dart';
import 'package:noor_alkisaa/controller/app_local.dart';
import 'package:pin_code_fields/pin_code_fields.dart';


class ForgetPasswordScreen2 extends StatefulWidget {
  const ForgetPasswordScreen2({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordScreen2> createState() => _ForgetPasswordScreen2State();
}

class _ForgetPasswordScreen2State extends State<ForgetPasswordScreen2> {

  TextEditingController textEditingController = TextEditingController();

  StreamController<ErrorAnimationType>? errorController;

  bool hasError = false;
  String currentText = "";

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

  final _formKey = GlobalKey<FormState>();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _formKey,
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  height: SizeConfig.screenHeight! / 2.1,
                  child: Padding(
                    padding: EdgeInsets.only(top:  SizeConfig.defaultSize!*8.8),
                    child: Column(
                      children: [
                        Image.asset("assets/images/layer3.png"),
                        SizedBox(
                          height: SizeConfig.screenHeight! / 20,
                        ),
                        Column(
                          children: [
                            Text(
                              AppLocal.of(context)
                                  .getTranslated("نسيت كلمة المرور؟"),
                              style: Theme.of(context).textTheme.headline1,
                            ),
                            Divider(
                              height: 5,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.defaultSize! * 3.0,
                  ),
                  child: Container(
                    child: Column(children: <Widget>[
                      Column(
                        children: [
                          Center(
                            child: Text(
                              AppLocal.of(context).getTranslated(
                                  "ادخل الرمز المرسل على بريدك الالكتروني"),
                              style:
                              TextStyle(fontSize: 21, color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            height: SizeConfig.defaultSize! * 2,
                          ),
                          Form(
                            key: formKey,
                            child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: SizeConfig.defaultSize! * 0.8),
                                child: PinCodeTextField(
                                  hintCharacter: "-",
                                  hintStyle: TextStyle(
                                      color: Colors.grey.shade400,
                                      fontSize: 20.0),
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
                                    fieldWidth: SizeConfig.defaultSize! * 7.0,
                                    activeFillColor: Colors.white,
                                    disabledColor: Colors.grey.shade300,
                                    activeColor: Colors.grey.shade300,
                                    inactiveColor: Colors.grey.shade300,
                                    selectedColor: Colors.grey.shade300,
                                    selectedFillColor: Colors.grey.shade300,
                                    inactiveFillColor: Colors.grey.shade500,

                                  ),
                                  cursorColor: Colors.grey.shade400,

                                  animationDuration:
                                  const Duration(milliseconds: 300),
                                  errorAnimationController: errorController,
                                  controller: textEditingController,
                                  keyboardType: TextInputType.number,
                                  onChanged: (value) {
                                    debugPrint(value);
                                    setState(() {
                                      currentText = value;
                                    });
                                  },
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: SizeConfig.defaultSize! * 2.5),
                            child: Text(
                              hasError &&
                                  formKey.currentState!.validate() &&
                                  currentText.length != 4
                                  ? AppLocal.of(context).getTranslated("الرجاء إدخال الرمز المرسل إلى بريدك الإلكتروني")
                                  : "",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Dubai"),
                            ),
                          ),
                          SizedBox(
                            height: hasError &&
                                formKey.currentState!.validate() &&
                                currentText.length != 4
                                ? SizeConfig.defaultSize! * 2.5
                                : SizeConfig.defaultSize! * 0.0,
                          ),
                          CustomgradentButton(
                            buttonWidth: null,
                            onPressed: () {
                              if (formKey.currentState!.validate() &&
                                  currentText.length != 4) {
                                errorController!.add(ErrorAnimationType
                                    .shake); // Triggering error shake animation
                                setState(() => hasError = true);


                              } else {
                                setState(
                                      () {
                                    hasError = false;
                                  },
                                );

                                Navigator.pushNamed(context, "ForgetPasswordScreen3");
                                textEditingController.clear();
                              }
                            },
                            child: Center(
                              child: Text(
                                AppLocal.of(context).getTranslated("التالى"),
                                style: Theme.of(context).textTheme.button,
                              ),
                            ),
                            borderColor: Colors.white,
                            alignment: Alignment.center,
                            buttonheight: SizeConfig.defaultSize! * 5.8,
                          ),
                        ],
                      ),
                    ]),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

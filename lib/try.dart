import 'dart:async';

import 'package:flutter/material.dart';
import 'package:noor_alkisaa/view/widgets/custom_gradient_button.dart';
import 'package:noor_alkisaa/view/widgets/pin_code_fields.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'helper/constance.dart';
import 'helper/sized_config.dart';

// ignore: use_key_in_widget_constructors
class Try extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return MaterialApp(
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      //   backgroundColor: Colors.white,
      //   scaffoldBackgroundColor: Colors.white,
      // ),
      home:  PinCodeVerificationScreen(
          phoneNumber:
              "+8801376221100"), // a random number, please don't call xD
    );
  }
}

class PinCodeVerificationScreen extends StatefulWidget {
  final String? phoneNumber;

  const PinCodeVerificationScreen({
    Key? key,
    this.phoneNumber,
  }) : super(key: key);

  @override
  _PinCodeVerificationScreenState createState() =>
      _PinCodeVerificationScreenState();
}

class _PinCodeVerificationScreenState extends State<PinCodeVerificationScreen> {
  TextEditingController textEditingController = TextEditingController();

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

  // snackBar Widget
  snackBar(String? message) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message!),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () {},
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            children: <Widget>[
              SizedBox(height: 50),

              Center(
                child: CustomgradentButton(
                    buttonWidth: null,
                    buttonheight: 2.5,
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return Dialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(15.0)),
                              //this right here
                              child: Container(
                                padding:
                                EdgeInsets.only(bottom: 10),
                                height:
                                SizeConfig.defaultSize! * 60,
                                child: Container(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding:
                                            const EdgeInsets
                                                .only(
                                              top: 5.0,
                                              right: 10.0,
                                              left: 5.0,
                                            ),
                                            child: IconButton(
                                              icon: Icon(
                                                Icons.cancel,
                                                color: Colors
                                                    .grey[400],
                                                size: 32,
                                              ),
                                              onPressed: () {
                                                Navigator.pop(
                                                    context);
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                        CrossAxisAlignment
                                            .center,
                                        mainAxisAlignment:
                                        MainAxisAlignment
                                            .center,
                                        children: [
                                          Image.asset(
                                              "assets/images/layer3.png"),
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                        CrossAxisAlignment
                                            .center,
                                        mainAxisAlignment:
                                        MainAxisAlignment
                                            .center,
                                        children: [
                                          Text(

                                                "ادخال الكود المرسل على جوالك",
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontFamily: "Dubai",
                                                color: Colors.grey,
                                                fontWeight:
                                                FontWeight
                                                    .w500),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                        CrossAxisAlignment
                                            .center,
                                        mainAxisAlignment:
                                        MainAxisAlignment
                                            .center,
                                        children: [
                                          Text(
                                            "0123456789",
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontFamily: "Dubai",
                                                color: Colors.grey,
                                                fontWeight:
                                                FontWeight
                                                    .w500),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                        EdgeInsets.symmetric(
                                            vertical: 15,
                                            horizontal: 15),
                                        child: Form(
                                            key: formKey,
                                            child: PinCodeField()),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                                        child: Text(
                                          hasError && formKey.currentState!.validate() &&
                                              currentText.length != 4? "*Please fill up all the cells properly" : "",
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      // Row(
                                      //   children: [
                                      //     Text(
                                      //       hasError &&
                                      //               formKey
                                      //                   .currentState!
                                      //                   .validate() &&
                                      //               currentText
                                      //                       .length !=
                                      //                   4
                                      //           ? "  Please fill up all the cells properly"
                                      //           : " ",
                                      //       style: TextStyle(
                                      //           color: Colors.red,
                                      //           fontSize: 12,
                                      //           fontWeight:
                                      //               FontWeight
                                      //                   .w400),
                                      //     ),
                                      //   ],
                                      // ),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment
                                            .center,
                                        children: [
                                          Text(
                                            "0:46",
                                            style: TextStyle(
                                                color:
                                                primaryGreenColor,
                                                fontSize: 16,
                                                fontWeight:
                                                FontWeight
                                                    .w600),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                        CrossAxisAlignment
                                            .center,
                                        mainAxisAlignment:
                                        MainAxisAlignment
                                            .center,
                                        children: [
                                          Text(

                                                "اعاده الارسال",
                                            style: TextStyle(
                                                color: primaryColor,
                                                fontSize: 16,
                                                fontWeight:
                                                FontWeight
                                                    .w600),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                        CrossAxisAlignment
                                            .center,
                                        mainAxisAlignment:
                                        MainAxisAlignment
                                            .center,
                                        children: [
                                          CustomgradentButton(
                                              buttonWidth: SizeConfig
                                                  .screenWidth! /
                                                  1.4,
                                              buttonheight: SizeConfig
                                                  .defaultSize! *
                                                  5.0,
                                              onPressed: () {
                                             //   Navigator.pushNamed(context, "ForgetPasswordScreen1");
                                                // conditions for validating
                                                if (formKey
                                                    .currentState!
                                                    .validate() &&
                                                    currentText
                                                        .length !=
                                                        4) {
                                                  errorController!.add(
                                                      ErrorAnimationType
                                                          .shake); // Triggering error shake animation
                                                  setState(() =>
                                                  hasError =
                                                  true);

                                                } else {
                                                  setState(
                                                        () {
                                                      hasError =
                                                      false;
                                                    },
                                                  );
                                                  textEditingController
                                                      .clear();
                                                }
                                                // textEditingController.clear();
                                              },
                                              child: Center(
                                                child: Text(

                                                      "تاكيد",
                                                  style: Theme.of(
                                                      context)
                                                      .textTheme
                                                      .button,
                                                ),
                                              )),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          });
                    },
                    child: Text(
                      "تفعيل",
                      // "تفعيل",
                      style: Theme.of(context).textTheme.button,
                    )),
                // child: Form(
                //   key: formKey,
                //   child: Padding(
                //       padding: const EdgeInsets.symmetric(
                //           vertical: 8.0, horizontal: 30),
                //       child: PinCodeTextField(
                //         hintCharacter: "-",
                //         hintStyle: TextStyle(
                //             color: Colors.grey.shade400, fontSize: 15.0),
                //         appContext: context,
                //         pastedTextStyle: TextStyle(
                //           fontWeight: FontWeight.bold,
                //         ),
                //         length: 4,
                //         animationType: AnimationType.fade,
                //         pinTheme: PinTheme(
                //           shape: PinCodeFieldShape.box,
                //           borderRadius: BorderRadius.circular(9.0),
                //           fieldHeight: SizeConfig.defaultSize! * 6.0,
                //           fieldWidth: SizeConfig.defaultSize! * 5.5,
                //           activeFillColor: Colors.white,
                //           disabledColor: Colors.grey.shade300,
                //           activeColor: Colors.grey.shade300,
                //           inactiveColor: Colors.grey.shade300,
                //           selectedColor: Colors.grey.shade300,
                //           selectedFillColor: Colors.grey.shade300,
                //         ),
                //         cursorColor: Colors.black,
                //         animationDuration: const Duration(milliseconds: 300),
                //         errorAnimationController: errorController,
                //         controller: textEditingController,
                //         keyboardType: TextInputType.number,
                //         onChanged: (value) {
                //           debugPrint(value);
                //           setState(() {
                //             currentText = value;
                //           });
                //         },
                //       )),
                // ),
              ),
             //  Padding(
             //    padding: const EdgeInsets.symmetric(horizontal: 30.0),
             //    child: Text(
             //      hasError && formKey.currentState!.validate() &&
             //          currentText.length != 4? "*Please fill up all the cells properly" : "",
             //      style: TextStyle(
             //          color: Colors.red,
             //          fontSize: 12,
             //          fontWeight: FontWeight.w400),
             //    ),
             //  ),
             //  const SizedBox(
             //    height: 20,
             //  ),
             // Container(
             //   child: Row(
             //      children: [
             //        CustomgradentButton(
             //            buttonWidth: SizeConfig
             //                .screenWidth! /
             //                1.4,
             //            buttonheight: SizeConfig
             //                .defaultSize! *
             //                5.0,
             //            onPressed: () {
             //              // conditions for validating
             //              if (formKey
             //                  .currentState!
             //                  .validate() &&
             //                  currentText
             //                      .length !=
             //                      4) {
             //                errorController!.add(
             //                    ErrorAnimationType
             //                        .shake); // Triggering error shake animation
             //                setState(() =>
             //                hasError =
             //                true);
             //                print(
             //                    "errrrrrrrrrrrrrror");
             //              } else {
             //                setState(
             //                      () {
             //                    hasError =
             //                    false;
             //                  },
             //                );
             //                textEditingController
             //                    .clear();
             //              }
             //              // textEditingController.clear();
             //            },
             //            child: Center(
             //              child: Text(
             //                    "تاكيد",
             //                style: Theme.of(
             //                    context)
             //                    .textTheme
             //                    .button,
             //              ),
             //            )),
             //      ],
             //   ),
             // ),

             /* Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 16.0, horizontal: 30),
                child: ButtonTheme(
                  height: 50,
                  child: TextButton(
                    onPressed: () {
                      // conditions for validating
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
                        textEditingController.clear();
                      }
                      // textEditingController.clear();
                    },
                    child: Center(
                        child: Text(
                      "VERIFY".toUpperCase(),
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.green.shade300,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.green.shade200,
                          offset: Offset(1, -2),
                          blurRadius: 5),
                      BoxShadow(
                          color: Colors.green.shade200,
                          offset: Offset(-1, 2),
                          blurRadius: 5)
                    ]),
              ),*/
              // const SizedBox(
              //   height: 16,
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: <Widget>[
              //     Flexible(
              //         child: TextButton(
              //           child: const Text("Clear"),
              //           onPressed: () {
              //             textEditingController.clear();
              //           },
              //         ),
              //     ),
              //     // Flexible(
              //     //     child: TextButton(
              //     //       child: const Text("Set Text"),
              //     //       onPressed: () {
              //     //         setState(() {
              //     //           textEditingController.text = "123456";
              //     //         });
              //     //       },
              //     //     )),
              //   ],
              // )
            ],
          ),
        ),
      ),
    );
  }
}




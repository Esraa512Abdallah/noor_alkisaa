import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:noor_alkisaa/helper/constance.dart';
import 'package:noor_alkisaa/helper/sized_config.dart';
import 'package:noor_alkisaa/view/widgets/custom_button.dart';
import 'package:noor_alkisaa/view/widgets/custom_gradient_button.dart';
import 'package:noor_alkisaa/view/widgets/dashed_circle.dart';
import 'package:noor_alkisaa/view/widgets/labeled_field.dart';
import 'package:noor_alkisaa/view/widgets/pin_code_fields.dart';
import 'package:noor_alkisaa/view_model/app_local.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  TextEditingController textEditingController = TextEditingController();
  bool _isObscure1 = true;
  bool _isObscure2 = true;
  String? action_text = " ";

  String? _name ;

  var _currencies = [
    "Food",
    "Transport",
    "Personal",
    "Shopping",
    "Medical",
    "Rent",
    "Movie",
    "Salary"
  ];
  String? _currentSelectedValue;
  int x1 = 0, x2 = 0, x3 = 0, x4 = 0, x5 = 0, x6 = 0;

  List<String> _locations = ['A', 'B', 'C', 'D'];

  String? _selectedLocation;

  final GlobalKey<FormState> _formkey1 = GlobalKey();

  // final GlobalKey<FormState> _formkey2 = GlobalKey();
  //
  //


  // // ..text = "123456";
  //
  // // ignore: close_sinks
  StreamController<ErrorAnimationType>? errorController;

  //
  bool hasError = false;

  //
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

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(AppLocal.of(context).getTranslated("طلب تسجيل جديد")),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                groundColor1,
                groundColor2,
                groundColor3,
                groundColor4,
              ],
            ),
          ),
        ),
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushNamed(context, "SignInScreen");
          },
        ),
      ),
      body: Form(
        key: _formkey1,
        child: ListView(
          padding: EdgeInsets.only(top: 50),
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 135),
                  child: SizedBox(
                    height: 120,
                    width: 120,
                    child: DashedCircle(
                      child: Padding(
                        padding: EdgeInsets.all(6.0),
                        child: CircleAvatar(
                          child: Center(
                              child: Image.asset("assets/images/camera.png")),
                          backgroundColor: primaryGreyColor3,
                          radius: 70.0,
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        AppLocal.of(context).getTranslated("إضافة صور الشعار"),
                        style: TextStyle(
                            fontFamily: 'Dubai', color: Colors.grey[600]),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: SizeConfig.defaultSize! * 3,
                    right: SizeConfig.defaultSize! * 2,
                    left: SizeConfig.defaultSize! * 2,
                  ),
                  child: Column(
                    children: [
                      CustomTextFeildWithLable(
                        hintText: 'مصطفى محمد',
                        onClick: (val) {
                          setState(() {
                            _name = val ;
                          });
                        },
                        suffixWidget: Icon(
                          Icons.person,
                          color: primaryGreenColor,
                          size: 30,
                        ),
                        lableText: AppLocal.of(context).getTranslated("الاسم"),
                        obscureText: false,
                        keyboardType: TextInputType.name,
                      ),
                      SizedBox(
                        height: SizeConfig.defaultSize! * 2,
                      ),
                      CustomTextFeildWithLable(
                        hintText: "0123456789",
                        //controller: textEditingController,
                          onClick: (val) {},
                          suffixWidget: Container(
                            //height: 20,

                            padding: EdgeInsets.only(
                              right: SizeConfig.defaultSize! * 1.0,
                              left: SizeConfig.defaultSize! * 1.0,
                              // top: SizeConfig.defaultSize! * 0.2,
                              //bottom: SizeConfig.defaultSize! * 0.2,
                            ),
                            width: 110,
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
                                            SizeConfig.defaultSize! * 62,
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
                                                        AppLocal.of(context)
                                                            .getTranslated(
                                                            "ادخال الكود المرسل على جوالك"),
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
                                                  // Padding(
                                                  //   padding:
                                                  //       EdgeInsets.symmetric(
                                                  //           vertical: 15,
                                                  //           horizontal: 15),
                                                  //   child: Form(
                                                  //       key: formKey,
                                                  //       child: PinCodeField()),
                                                  // ),
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
                                                        AppLocal.of(context)
                                                            .getTranslated(
                                                            "اعاده الارسال"),
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

                                                      // CustomgradentButton(
                                                      //   buttonWidth: null,
                                                      //   onPressed: () {
                                                      //     if (formKey.currentState!.validate() &&
                                                      //         currentText.length != 4) {
                                                      //       errorController!.add(ErrorAnimationType
                                                      //           .shake); // Triggering error shake animation
                                                      //       setState(() => hasError = true);
                                                      //
                                                      //
                                                      //     } else {
                                                      //       setState(
                                                      //             () {
                                                      //           hasError = false;
                                                      //         },
                                                      //       );
                                                      //
                                                      //       Navigator.pushNamed(context, "ForgetPasswordScreen3");
                                                      //       textEditingController.clear();
                                                      //     }
                                                      //   },
                                                      //   child: Center(
                                                      //     child: Text(
                                                      //       AppLocal.of(context).getTranslated("التالى"),
                                                      //       style: Theme.of(context).textTheme.button,
                                                      //     ),
                                                      //   ),
                                                      //   borderColor: Colors.white,
                                                      //   alignment: Alignment.center,
                                                      //   buttonheight: SizeConfig.defaultSize! * 5.8,
                                                      // ),

                                                      CustomgradentButton(
                                                          buttonWidth: SizeConfig
                                                              .screenWidth! /
                                                              1.4,
                                                          buttonheight: SizeConfig
                                                              .defaultSize! *
                                                              5.0,
                                                          onPressed: () {

                                                            if (
                                                            formKey.currentState!.validate() &&
                                                                currentText.length != 4) {
                                                              errorController!.add(
                                                                  ErrorAnimationType
                                                                      .shake);
                                                              formKey.currentState!.save();// Triggering error shake animation
                                                              setState(() =>
                                                              hasError = true);
                                                              print("true");
                                                            } else {
                                                              print("false");
                                                              setState(() {
                                                                hasError = false;
                                                              },
                                                              );
                                                              textEditingController
                                                                  .clear();
                                                            }
                                                            // textEditingController.clear();
                                                          },
                                                          child: Center(
                                                            child: Text(
                                                              AppLocal.of(
                                                                  context)
                                                                  .getTranslated(
                                                                  "تاكيد"),
                                                              style: Theme.of(
                                                                  context)
                                                                  .textTheme
                                                                  .button,
                                                            ),
                                                          )
                                                      ),
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
                                  AppLocal.of(context).getTranslated("تفعيل"),
                                  // "تفعيل",
                                  style: Theme.of(context).textTheme.button,
                                )),
                          ),
                          lableText:
                          AppLocal.of(context).getTranslated("رقم الجوال"),
                          obscureText: false,
                          keyboardType: TextInputType.name),
                      SizedBox(
                        height: SizeConfig.defaultSize! * 2,
                      ),
                      CustomTextFeildWithLable(
                        hintText: "Username@gmail.com",
                        //controller: textEditingController,
                          onClick: (val) {},
                          suffixWidget: Image.asset("assets/images/mail.png"),
                          lableText: AppLocal.of(context)
                              .getTranslated("البريد الالكترونى"),
                          obscureText: false,
                          keyboardType: TextInputType.name),
                      SizedBox(
                        height: SizeConfig.defaultSize! * 2,
                      ),
                      CustomTextFeildWithLable(
                        hintText: "بابل",
                        //controller: textEditingController,
                          onClick: (val) {},
                          suffixWidget: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              value: _selectedLocation,
                              onChanged: (String? value) {
                                setState(() {
                                  _selectedLocation = value!;
                                });
                              },
                              items: _locations.map((String location) {
                                return new DropdownMenuItem<String>(
                                  child: new Text(location),
                                  value: location,
                                );
                              }).toList(),
                            ),
                          ),
                          // IconButton(
                          //   icon: Icon(
                          //     Icons.arrow_drop_down,
                          //     color: primaryGreenColor,
                          //     size: 35,
                          //   ),
                          //
                          //   color: primaryGreenColor, onPressed: () {},
                          //   //size: 30,
                          // ),
                          lableText:
                          AppLocal.of(context).getTranslated("المنطقه"),
                          obscureText: false,
                          keyboardType: TextInputType.name),
                      SizedBox(
                        height: SizeConfig.defaultSize! * 2,
                      ),
                      CustomTextFeildWithLable(
                        //controller: textEditingController,
                        hintText: "حى المعلمين,الدروه,بغداد",
                          onClick: (val) {},
                          suffixWidget: Icon(
                            Icons.add_location,
                            color: primaryGreenColor,
                            size: 25,
                          ),
                          //size: 30,

                          //Image.asset("assets/images/map-marker.png",height: 10,width: 10,),
                          lableText:
                          AppLocal.of(context).getTranslated("العنوان"),
                          obscureText: false,
                          keyboardType: TextInputType.name),
                      SizedBox(
                        height: SizeConfig.defaultSize! * 2,
                      ),
                      CustomTextFeildWithLable(
                        //controller: textEditingController,
                        hintText: "**********************",
                        onClick: (val) {},
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: _isObscure1,
                        lableText:
                        AppLocal.of(context).getTranslated("كلمة المرور"),
                        iconcolor: primaryGreenColor,
                        suffixWidget: IconButton(
                          color: primaryGreenColor,
                          onPressed: () {
                            setState(() {
                              _isObscure1 = !_isObscure1;
                            });
                          },
                          icon: _isObscure1
                              ? Icon(Icons.visibility)
                              : Icon(Icons.visibility_off),
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.defaultSize! * 2,
                      ),
                      CustomTextFeildWithLable(
                        hintText: "********************",

                        onClick: (val) {},
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: _isObscure2,
                        lableText: AppLocal.of(context)
                            .getTranslated("تأكيد كلمة المرور"),
                        iconcolor: primaryGreenColor,
                        suffixWidget: IconButton(
                          color: primaryGreenColor,
                          onPressed: () {
                            setState(() {
                              _isObscure2 = !_isObscure2;
                            });
                          },
                          icon: _isObscure2
                              ? Icon(Icons.visibility)
                              : Icon(Icons.visibility_off),
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.defaultSize! * 2,
                      ),
                      CustomButton(
                        buttonheight: 50,
                        color: Colors.white,
                        onPressed: () async {
                          await pickerCamera((value) {
                            selectedPhoto1 = value;
                          });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                AppLocal.of(context).getTranslated(
                                    "البطاقه الوطنيه (الهوايه) - اماميه"),
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              flex: 4,
                            ),
                            Expanded(
                              flex: 1,
                              child: Icon(
                                Icons.camera_alt,
                                size: 30,
                                color: primaryColor,
                              ),
                            ),
                          ],
                        ),
                        borderRadius: 15.0,
                        borderColor: primaryGreyColor2,
                      ),
                      // (x1 == 1)
                      selectedPhoto1 != null
                          ? Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(bottom: 5, top: 5),
                            child: Stack(
                              children: [
                                Positioned(
                                  child: Container(
                                    padding: EdgeInsets.only(
                                        top: 10, left: 10),
                                    height: SizeConfig.defaultSize! * 6,
                                    width: SizeConfig.defaultSize! * 6,
                                    // decoration: BoxDecoration(
                                    //   borderRadius:
                                    //   BorderRadius.circular(10.0),
                                    //   border: Border.all(
                                    //     color: Colors.green,
                                    //     width: 1.0,
                                    //
                                    //   )
                                    // ),
                                    // child: Image.asset(
                                    //     "assets/images/layer3.png"),
                                    child: Image.file(
                                      File(selectedPhoto1!.path),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedPhoto1 = null;
                                      });
                                    },
                                    child: Icon(
                                      Icons.cancel_rounded,
                                      color: Colors.red,
                                      size: 20,
                                    ),
                                  ),
                                  top: 0,
                                  left: 0,
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                          : SizedBox(
                        height: SizeConfig.defaultSize! * 2,
                      ),
                      CustomButton(
                        buttonheight: 50,
                        color: Colors.white,
                        onPressed: () async {
                          await pickerCamera((value) {
                            selectedPhoto2 = value;
                          });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                AppLocal.of(context).getTranslated(
                                    "البطاقه الوطنيه (الهوايه) - خلفيه"),
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              flex: 4,
                            ),
                            Expanded(
                              flex: 1,
                              child: Icon(
                                Icons.camera_alt,
                                size: 30,
                                color: primaryColor,
                              ),
                            ),
                          ],
                        ),
                        borderRadius: 15.0,
                        borderColor: primaryGreyColor2,
                      ),
                      selectedPhoto2 != null
                      //(x2 == 1)
                          ? Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(bottom: 5, top: 5),
                            child: Stack(
                              children: [
                                Positioned(
                                  child: Container(
                                    padding: EdgeInsets.only(
                                        top: 10, left: 10),
                                    height: SizeConfig.defaultSize! * 6,
                                    width: SizeConfig.defaultSize! * 6,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadius.circular(5.0),
                                    ),
                                    child: Image.file(
                                      File(selectedPhoto2!.path),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedPhoto2 = null;
                                      });
                                    },
                                    child: Icon(
                                      Icons.cancel_rounded,
                                      color: Colors.red,
                                      size: 20,
                                    ),
                                  ),
                                  top: 0,
                                  left: 0,
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                          : SizedBox(
                        height: SizeConfig.defaultSize! * 2,
                      ),
                      CustomButton(
                        buttonheight: 50,
                        color: Colors.white,
                        onPressed: () async {
                          await pickerCamera((value) {
                            selectedPhoto3 = value;
                          });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                AppLocal.of(context)
                                    .getTranslated("بطاقه السكن - اماميه"),
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              flex: 4,
                            ),
                            Expanded(
                              flex: 1,
                              child: Icon(
                                Icons.camera_alt,
                                size: 30,
                                color: primaryColor,
                              ),
                            ),
                          ],
                        ),
                        borderRadius: 15.0,
                        borderColor: primaryGreyColor2,
                      ),
                      //(x3 == 1)
                      selectedPhoto3 != null
                          ? Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(bottom: 5, top: 5),
                            child: Stack(
                              children: [
                                Positioned(
                                  child: Container(
                                    padding: EdgeInsets.only(
                                        top: 10, left: 10),
                                    height: SizeConfig.defaultSize! * 6,
                                    width: SizeConfig.defaultSize! * 6,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadius.circular(5.0),
                                      // border: Border.all(
                                      //   color: Colors.black,
                                      //   width: 1.0,
                                      //
                                      // )
                                    ),
                                    child: Image.file(
                                      File(selectedPhoto3!.path),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedPhoto3 = null;
                                      });
                                    },
                                    child: Icon(
                                      Icons.cancel_rounded,
                                      color: Colors.red,
                                      size: 20,
                                    ),
                                  ),
                                  top: 0,
                                  left: 0,
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                          : SizedBox(
                        height: SizeConfig.defaultSize! * 2,
                      ),
                      CustomButton(
                        buttonheight: 50,
                        color: Colors.white,
                        onPressed: () async {
                          await pickerCamera((value) {
                            selectedPhoto4 = value;
                          });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                AppLocal.of(context)
                                    .getTranslated("بطاقه السكن - خلفيه"),
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              flex: 4,
                            ),
                            Expanded(
                              flex: 1,
                              child: Icon(
                                Icons.camera_alt,
                                size: 30,
                                color: primaryColor,
                              ),
                            ),
                          ],
                        ),
                        borderRadius: 15.0,
                        borderColor: primaryGreyColor2,
                      ),
                      //(x4 == 1)
                      selectedPhoto4 != null
                          ? Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(bottom: 5, top: 5),
                            child: Stack(
                              children: [
                                Positioned(
                                  child: Container(
                                    padding: EdgeInsets.only(
                                        top: 10, left: 10),
                                    height: SizeConfig.defaultSize! * 6,
                                    width: SizeConfig.defaultSize! * 6,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadius.circular(5.0),
                                      // border: Border.all(
                                      //   color: Colors.black,
                                      //   width: 1.0,
                                      //
                                      // )
                                    ),
                                    child: Image.file(
                                      File(selectedPhoto4!.path),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedPhoto4 = null;
                                      });
                                    },
                                    child: Icon(
                                      Icons.cancel_rounded,
                                      color: Colors.red,
                                      size: 20,
                                    ),
                                  ),
                                  top: 0,
                                  left: 0,
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                          : SizedBox(
                        height: SizeConfig.defaultSize! * 2,
                      ),
                      CustomButton(
                        buttonheight: 50,
                        color: Colors.white,
                        onPressed: () async {
                          await pickerCamera((value) {
                            selectedPhoto5 = value;
                          });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                AppLocal.of(context).getTranslated("التموينيه"),
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              flex: 4,
                            ),
                            Expanded(
                              flex: 1,
                              child: Icon(
                                Icons.camera_alt,
                                size: 30,
                                color: primaryColor,
                              ),
                            ),
                          ],
                        ),
                        borderRadius: 15.0,
                        borderColor: primaryGreyColor2,
                      ),
                      //(x5 == 1)
                      selectedPhoto5 != null
                          ? Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(bottom: 5, top: 5),
                            child: Stack(
                              children: [
                                Positioned(
                                  child: Container(
                                    padding: EdgeInsets.only(
                                        top: 10, left: 10),
                                    height: SizeConfig.defaultSize! * 6,
                                    width: SizeConfig.defaultSize! * 6,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadius.circular(5.0),
                                      // border: Border.all(
                                      //   color: Colors.black,
                                      //   width: 1.0,
                                      //
                                      // )
                                    ),
                                    child: Image.file(
                                      File(selectedPhoto5!.path),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedPhoto5 = null;
                                      });
                                    },
                                    child: Icon(
                                      Icons.cancel_rounded,
                                      color: Colors.red,
                                      size: 20,
                                    ),
                                  ),
                                  top: 0,
                                  left: 0,
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                          : SizedBox(
                        height: SizeConfig.defaultSize! * 2,
                      ),
                      CustomButton(
                        buttonheight: 50,
                        color: Colors.white,
                        onPressed: () async {
                          await pickerCamera((value) {
                            selectedPhoto6 = value;
                          });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                AppLocal.of(context)
                                    .getTranslated("المكتب/المحل"),
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              flex: 4,
                            ),
                            Expanded(
                              flex: 1,
                              child: Icon(
                                Icons.camera_alt,
                                size: 30,
                                color: primaryColor,
                              ),
                            ),
                          ],
                        ),
                        borderRadius: 15.0,
                        borderColor: primaryGreyColor2,
                      ),
                      //(x6 == 1)
                      selectedPhoto6 != null
                          ? Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(bottom: 5, top: 5),
                            child: Stack(
                              children: [
                                Positioned(
                                  child: Container(
                                    padding: EdgeInsets.only(
                                        top: 10, left: 10),
                                    height: SizeConfig.defaultSize! * 6,
                                    width: SizeConfig.defaultSize! * 6,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadius.circular(5.0),
                                      // border: Border.all(
                                      //   color: Colors.black,
                                      //   width: 1.0,
                                      //
                                      // )
                                    ),
                                    child: Image.file(
                                      File(selectedPhoto6!.path),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedPhoto6 = null;
                                      });
                                    },
                                    child: Icon(
                                      Icons.cancel_rounded,
                                      color: Colors.red,
                                      size: 20,
                                    ),
                                  ),
                                  top: 0,
                                  left: 0,
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                          : SizedBox(
                        height: SizeConfig.defaultSize! * 2,
                      ),
                      CustomgradentButton(
                          buttonWidth: null,
                          buttonheight: 50,
                          onPressed: () {
                            if (_formkey1.currentState!.validate()) {
                              _formkey1.currentState!.save();

                              Navigator.pushNamed(context, "SignInScreen");

                              _formkey1.currentState!.reset();
                            }
                          },
                          child: Center(
                            child: Text(
                              AppLocal.of(context).getTranslated("تسجيل"),
                              style: Theme.of(context).textTheme.button,
                            ),
                          )),
                      SizedBox(
                        height: SizeConfig.defaultSize! * 2,
                      ),

                      /////////////////////////////////////////////////
                      Container(
                        height: 200,
                        padding: EdgeInsets.only(bottom: 20),
                        // height: 50,
                        // decoration: BoxDecoration(
                        //   borderRadius: BorderRadius.circular(20.0),
                        //   border: Border.all(
                        //     width: 1.0,
                        //     color: primaryGreyColor2,
                        //   ),
                        // ),
                        child: FormField<String>(
                          builder: (FormFieldState<String> state) {
                            return InputDecorator(
                              decoration: InputDecoration(
                                label: Text("xxx"),
                                // labelStyle: textStyle,
                                errorStyle: TextStyle(
                                    color: Colors.redAccent, fontSize: 16.0),
                                hintText: 'Please select expense',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                              ),
                              // isEmpty: _currentSelectedValue == '',

                              child: Container(
                                height: 20,
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                    value: _currentSelectedValue,
                                    isDense: true,
                                    onChanged: (String? value) {
                                      setState(() {
                                        _currentSelectedValue = value!;
                                        state.didChange(value);
                                      });
                                    },
                                    items: _currencies.map((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  XFile? selectedPhoto1;
  XFile? selectedPhoto2;
  XFile? selectedPhoto3;
  XFile? selectedPhoto4;
  XFile? selectedPhoto5;
  XFile? selectedPhoto6;

  Future pickerCamera(ValueChanged<XFile?> value) async {
    XFile? photo = (await ImagePicker().pickImage(source: ImageSource.camera));



    setState(() {
      value(photo);
    });
  }
}

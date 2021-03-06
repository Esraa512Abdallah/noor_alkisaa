import 'dart:async';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:noor_alkisaa/helper/constance.dart';
import 'package:noor_alkisaa/helper/sized_config.dart';
import 'package:noor_alkisaa/view/widgets/active_phone_dialog.dart';
import 'package:noor_alkisaa/view/widgets/count_down_timer.dart';
import 'package:noor_alkisaa/view/widgets/custom_gradient_button.dart';
import 'package:noor_alkisaa/view/widgets/modification_card.dart';
import 'package:noor_alkisaa/view/widgets/modification_feild_dialog.dart';
import 'package:noor_alkisaa/view/widgets/modify_image_dialog.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../controller/app_local.dart';

class DataModification extends StatefulWidget {
  const DataModification({Key? key}) : super(key: key);

  @override
  State<DataModification> createState() => _DataModificationState();
}

class _DataModificationState extends State<DataModification> {

  String? _currentSelectedValue;
  final GlobalKey<FormState> _formkey1 = GlobalKey();

  TextEditingController textEditingController = TextEditingController();

  StreamController<ErrorAnimationType>? errorController;

  //
  bool hasError = false;

  //
  String currentText = "";

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


  bool val = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("طلب تعديل بيانات"),
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
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {
            // do something
          },
        ),
        actions: <Widget>[
          Image.asset("assets/images/question.png"),
        ],
      ),
      body: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(
                left: SizeConfig.defaultSize! * 1.0,
                right: SizeConfig.defaultSize! * 1.0,
                top: SizeConfig.defaultSize! * 2.0,
              ),
              child: Column(
                 // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomModificationCard(
                      headText: "الاسم",
                      widget: Text(
                        " خالد محمد",
                        style: TextStyle(
                            fontSize: 15,
                            color: primaryGreyColor,
                            fontFamily: "Dubai"),
                      ),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) => (
                                   ModificationFieldDialog(
                                     buttonText: "تعديل",
                                     hintText: "خالد محمد",
                                     labelText: "الاسم",
                                     suffixWidget: Icon(Icons.person,color: primaryGreenColor,),
                                   )
                                   )
                        );
                      }
                    ),
                    CustomModificationCard(
                      headText: "اسم المسؤول",
                      widget: Text(
                        "مصطفى ابراهيم",
                        style: TextStyle(
                            fontSize: 15,
                            color: primaryGreyColor,
                            fontFamily: "Dubai"),
                      ),
                      onPressed: () {


                          showDialog(
                              context: context,
                              builder: (BuildContext context) => (
                                  ModificationFieldDialog(
                                     labelText:  "اسم المسؤول",
                                      hintText: "مصطفى ابراهيم",
                                    buttonText: "تعديل",
                                    suffixWidget: Icon(Icons.person,color: primaryGreenColor,),
                                  )
                              )
                          );


                      },
                    ),
                    CustomModificationCard(
                      headText: "رقم الجوال",
                      widget: Text(
                        "0123456789",
                        style: TextStyle(
                            fontSize: 15,
                            color: primaryGreyColor,
                            fontFamily: "Dubai"),
                      ),
                      onPressed: () {



                        showDialog(
                            context: context,
                            builder: (BuildContext context) => (
                                ModificationFieldDialog(
                                  labelText:  "رقم الجوال",
                                  hintText: "0123456789",
                                  buttonText: "تعديل",
                                  suffixWidget: CustomgradentButton(
                                      buttonWidth: SizeConfig.defaultSize!*10.0,
                                      buttonheight: 2.5,

                                      onPressed : () {

                                        Navigator.pop(context);

                                        showDialog(
                                            context: context,
                                            builder: (BuildContext context) {

                                              return ActivePhoneDialog();

                                            });
                                      },
                                      child: Text(
                                        AppLocal.of(context).getTranslated("تفعيل"),
                                        // "تفعيل",
                                        style: Theme.of(context).textTheme.button,


                                      )
                                  ),
                                )
                            )
                        );

                       // Navigator.pop(context);
                      },
                    ),
                    CustomModificationCard(
                        headText: "البريد الالكترونى",
                        widget: Text(
                          "Username@gmail.com",
                          style: TextStyle(
                              fontSize: 15,
                              color: primaryGreyColor,
                              fontFamily: "Dubai"),
                        ),
                        onPressed: () {}),
                    CustomModificationCard(
                        headText: "المنطقه",
                        widget: Text(
                          "بغداد",
                          style: TextStyle(
                              fontSize: 15,
                              color: primaryGreyColor,
                              fontFamily: "Dubai"),
                        ),
                        onPressed: () {}),
                    CustomModificationCard(
                        headText: "العنوان",
                        widget: Text(
                          "حى المعلمين ,الدروه ,بغداد",
                          style: TextStyle(
                              fontSize: 15,
                              color: primaryGreyColor,
                              fontFamily: "Dubai"),
                        ),
                        onPressed: () {}),
                    CustomModificationCard(

                        widget: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(
                                  color: Colors.transparent,
                                  width: 1.0,
                                )),
                            child: selectedPhoto1 != null
                                ? Row(
                              children: [
                                Container(
                                  child: Image.file(
                                    File(selectedPhoto1!.path),
                                    fit: BoxFit.cover,
                                    height: 50,
                                    width: 50,
                                  ),
                                ),
                              ],
                            )
                                : Row(
                              children: [
                                Container(
                                  // padding: EdgeInsets.only(bottom: 5, top: 5),
                                  child: Image.asset(
                                    "assets/images/layer3.png",
                                    fit: BoxFit.cover,
                                    width: 50,
                                    height: 50,
                                  ),
                                ),
                              ],
                            )),
                        headText: "صوره الاشعار",
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return Dialog(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          15.0)),
                                  child: Container(
                                    padding: EdgeInsets.only(bottom: 10),
                                    height: SizeConfig.defaultSize! * 32,
                                    child: Container(
                                      child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    top: 5.0,
                                                    right: 10.0,
                                                    left: 5.0,
                                                  ),
                                                  child: IconButton(
                                                    icon: Icon(
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
                                            Row(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "طلب تعديل",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 16,
                                                      fontWeight: FontWeight
                                                          .w400),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              children: [
                                                // CustomButton(
                                                //   buttonheight: 45,
                                                //   buttonWidth:
                                                //       SizeConfig.defaultSize! * 30,
                                                //   color: Colors.white,
                                                //   onPressed: () async {
                                                //     await pickerCamera((value) {
                                                //       selectedPhoto1 = value;
                                                //     });
                                                //   },
                                                //   child: Row(
                                                //     mainAxisAlignment:
                                                //         MainAxisAlignment
                                                //             .spaceBetween,
                                                //     children: [
                                                //       Expanded(
                                                //         child: Text(
                                                //           "صوره الاشعار",
                                                //           style: Theme.of(context)
                                                //               .textTheme
                                                //               .bodyText1,
                                                //         ),
                                                //         flex: 4,
                                                //       ),
                                                //       Expanded(
                                                //         flex: 1,
                                                //         child: Icon(
                                                //           Icons.camera_alt,
                                                //           size: 30,
                                                //           color: primaryColor,
                                                //         ),
                                                //       ),
                                                //     ],
                                                //   ),
                                                //   borderRadius: 15.0,
                                                //   borderColor: primaryGreyColor2,
                                                // ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                      border: Border.all(
                                                          color: primaryGreyColor2)),
                                                  width: SizeConfig
                                                      .defaultSize! * 30,
                                                  padding: EdgeInsets.only(
                                                    top:
                                                    SizeConfig.defaultSize! *
                                                        0.5,
                                                    bottom:
                                                    SizeConfig.defaultSize! *
                                                        0.5,
                                                    right:
                                                    SizeConfig.defaultSize! *
                                                        1.0,
                                                    left:
                                                    SizeConfig.defaultSize! *
                                                        1.0,
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Expanded(
                                                        flex: 1,
                                                        child: Column(
                                                          children: [
                                                            Text("صوره الاشعار",
                                                                style: TextStyle(
                                                                    color:
                                                                    primaryColor,
                                                                    fontSize: 18,
                                                                    fontFamily:
                                                                    "Dubai")),
                                                          ],
                                                        ),
                                                      ),
                                                      Expanded(
                                                        flex: 1,
                                                        child: Row(
                                                          mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                          children: [
                                                            CustomgradentButton(
                                                              borderRadius: 2.0,
                                                              buttonheight: SizeConfig
                                                                  .defaultSize! *
                                                                  4.0,
                                                              buttonWidth: SizeConfig
                                                                  .defaultSize! *
                                                                  6.5,
                                                              onPressed: () async {
                                                                await pickerCamera(
                                                                        (
                                                                        value) {
                                                                      selectedPhoto1 =
                                                                          value;
                                                                    });
                                                              },
                                                              child: Center(
                                                                widthFactor: 10,
                                                                child: Icon(
                                                                    Icons
                                                                        .camera_alt,
                                                                    color:
                                                                    Colors
                                                                        .white,
                                                                    size: 25),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Container(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 10),
                                                child: selectedPhoto1 != null
                                                    ? Row(
                                                  children: [
                                                    Container(
                                                      padding: EdgeInsets.only(
                                                          bottom: 5,
                                                          top: 5,
                                                          left: 5,
                                                          right: 5),
                                                      child: Stack(
                                                        children: [
                                                          Positioned(
                                                            child: Container(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                  top: 10,
                                                                  left: 10),
                                                              child: Image.file(
                                                                File(
                                                                    selectedPhoto1!
                                                                        .path),
                                                                fit: BoxFit
                                                                    .cover,
                                                                height: 70,
                                                                width: 70,
                                                              ),
                                                            ),
                                                          ),
                                                          Positioned(
                                                            child:
                                                            GestureDetector(
                                                              onTap: () {
                                                                setState(() {
                                                                  selectedPhoto1 =
                                                                  null;
                                                                });
                                                              },
                                                              child: Icon(
                                                                Icons
                                                                    .cancel_rounded,
                                                                color:
                                                                Colors.red,
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
                                                    : Row(
                                                  children: [
                                                    Container(
                                                      padding: EdgeInsets.only(
                                                        bottom: 5,
                                                        top: 5,
                                                      ),
                                                      child: Stack(
                                                        children: [
                                                          Positioned(
                                                            child: Container(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                  top: 10,
                                                                  left: 10),
                                                              // height: SizeConfig.defaultSize! * 3,
                                                              //  width: SizeConfig.defaultSize! * 6,

                                                              // child: Image.asset(
                                                              //     "assets/images/layer3.png"),
                                                              child:
                                                              Image.asset(
                                                                "assets/images/layer3.png",
                                                                height: 70,
                                                                width: 70,
                                                              ),
                                                            ),
                                                          ),
                                                          Positioned(
                                                            child:
                                                            GestureDetector(
                                                              onTap: () {
                                                                setState(() {
                                                                  selectedPhoto1 =
                                                                  null;
                                                                });
                                                              },
                                                              child: Icon(
                                                                Icons
                                                                    .cancel_rounded,
                                                                color:
                                                                Colors.red,
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
                                                )),
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                horizontal:
                                                SizeConfig.defaultSize! * 2.0,
                                              ),
                                              child: Row(
                                                  children: [
                                                    Center(
                                                      child: CustomgradentButton(
                                                          child: Text(
                                                            "تعديل",
                                                            style: TextStyle(
                                                              color: Colors
                                                                  .white,
                                                            ),
                                                          ),
                                                          buttonWidth:
                                                          SizeConfig
                                                              .defaultSize! *
                                                              28.0,
                                                          buttonheight:
                                                          SizeConfig
                                                              .defaultSize! *
                                                              5.0,
                                                          onPressed: () {
                                                            showDialog(
                                                                context: context,
                                                                builder: (
                                                                    BuildContext
                                                                    context) {
                                                                  return Dialog(
                                                                    shape: RoundedRectangleBorder(
                                                                        borderRadius:
                                                                        BorderRadius
                                                                            .circular(
                                                                            15.0)),
                                                                    //this right here
                                                                    child: Container(
                                                                      height: SizeConfig
                                                                          .defaultSize! *
                                                                          25,
                                                                      child: Container(
                                                                        child: Column(
                                                                            children: [
                                                                              Row(
                                                                                children: [
                                                                                  Padding(
                                                                                    padding:
                                                                                    EdgeInsets
                                                                                        .all(
                                                                                      SizeConfig
                                                                                          .defaultSize! *
                                                                                          1.0,
                                                                                    ),
                                                                                    child:
                                                                                    IconButton(
                                                                                      icon:
                                                                                      Icon(
                                                                                        Icons
                                                                                            .cancel,
                                                                                        color:
                                                                                        Colors
                                                                                            .grey[400],
                                                                                        size:
                                                                                        32,
                                                                                      ),
                                                                                      onPressed:
                                                                                          () {
                                                                                        Navigator
                                                                                            .pop(
                                                                                            context);
                                                                                      },
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ]
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  );
                                                                }
                                                            );
                                                          }
                                                      ),
                                                    ),
                                                  ]
                                              ),
                                            ),



                         ///////////////////////////////////////////////////


                                          ]),

                                    ),
                                  ),
                                );
                              });
                        }
                    ),








                  ]),

            ),



          ]
      ),);
  }


}

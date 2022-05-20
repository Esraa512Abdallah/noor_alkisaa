import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:noor_alkisaa/helper/sized_config.dart';

import '../../helper/constance.dart';
import 'custom_gradient_button.dart';

class CustomModificationShowDialog extends StatefulWidget {


  String headText1 ;
  XFile? selectedPhoto ;

  CustomModificationShowDialog({
    required this.headText1,
    required this.selectedPhoto ,
  });

  @override
  State<CustomModificationShowDialog> createState() => _CustomModificationShowDialogState();
}

class _CustomModificationShowDialogState extends State<CustomModificationShowDialog> {
  bool _close1 = false ;

  // String get GetheadText1 {
  @override
  Widget build(BuildContext context) {

    SizeConfig().init(context);

    return
      Dialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0)),
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

                          Navigator.pop(context)  ;
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
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment:
                  CrossAxisAlignment.center,
                  mainAxisAlignment:
                  MainAxisAlignment.center,
                  children: [

                    Container(
                      decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.circular(5.0),
                          border: Border.all(
                              color: primaryGreyColor2)),
                      width: SizeConfig.defaultSize! * 30,
                      padding: EdgeInsets.only(
                        top:
                        SizeConfig.defaultSize! * 0.5,
                        bottom:
                        SizeConfig.defaultSize! * 0.5,
                        right:
                        SizeConfig.defaultSize! * 1.0,
                        left:
                        SizeConfig.defaultSize! * 1.0,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Column(
                              children: [
                                Text(widget.headText1,
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
                                            (value) {
                                          selectedPhoto1 =
                                              value;
                                        });
                                  },
                                  child: Center(
                                    widthFactor: 10,
                                    child: Icon(
                                        Icons.camera_alt,
                                        color:
                                        Colors.white,
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
                              color: Colors.white,
                            ),
                          ),
                          buttonWidth:
                          SizeConfig.defaultSize! *
                              28.0,
                          buttonheight:
                          SizeConfig.defaultSize! *
                              5.0,
                          onPressed: () {

                            Navigator.of(context).pop();


                            showDialog(
                                context: context,
                                builder: (BuildContext
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
                                                  EdgeInsets.all(
                                                    SizeConfig.defaultSize! *
                                                        1.0,
                                                  ),
                                                  child:
                                                  IconButton(
                                                    icon:
                                                    Icon(
                                                      Icons.cancel,
                                                      color:
                                                      Colors.grey[400],
                                                      size:
                                                      32,
                                                    ),
                                                    onPressed:
                                                        () {
                                                      Navigator.pop(context);
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(

                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .center,
                                              children: [
                                                Center(
                                                  child:
                                                  Stack(
                                                    children: [
                                                      Positioned(
                                                        child: SizedBox(
                                                          child: Image.asset(
                                                            "assets/images/Ellipse 2296.png",
                                                            fit: BoxFit.fill,
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        top: SizeConfig.defaultSize! * 3.8,
                                                        left: SizeConfig.defaultSize! * 3,
                                                        child: Image.asset("assets/images/Path.png"),
                                                      ),
                                                    ],
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
                                                Text(
                                                  "تم ارسال طلب تعديل بياناتك للاداره",
                                                  style: TextStyle(
                                                      fontSize:
                                                      17,
                                                      fontFamily:
                                                      "Dubai",
                                                      color:
                                                      Colors.black,
                                                      fontWeight: FontWeight.w500),
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
                                                  "و سيتيم التواصل معك",
                                                  style: TextStyle(
                                                      fontSize:
                                                      17,
                                                      fontFamily:
                                                      "Dubai",
                                                      color:
                                                      primaryGreyColor,
                                                      fontWeight: FontWeight.w500),
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
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
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



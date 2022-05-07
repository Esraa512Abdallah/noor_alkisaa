/*
import 'dart:io';

//import 'package:dashed_circle/dashed_circle.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:noor_alkisaa/helper/constance.dart';
import 'package:noor_alkisaa/helper/sized_config.dart';
import 'package:noor_alkisaa/view/widgets/custom_button.dart';
import 'package:noor_alkisaa/view/widgets/custom_gradient_button.dart';
import 'package:noor_alkisaa/view/widgets/dashed_circle.dart';
import 'package:noor_alkisaa/view/widgets/labeled_field.dart';

class AddNewSellPoint extends StatefulWidget {
  const AddNewSellPoint({Key? key}) : super(key: key);

  @override
  _AddNewSellPointState createState() => _AddNewSellPointState();
}

class _AddNewSellPointState extends State<AddNewSellPoint> {
  bool _isObscure1 = true;
  bool _isObscure2 = true;

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

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("اضافة نقاط بيع"),
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
                              child: Image.asset("assets/images/camera.png")
                          ),

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
                        "إضافة صور الشعار",
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
                        onClick: (val) {},
                        suffixWidget: Image.asset("assets/images/store.png"),
                        lableText: "*اسم نقطة البيع",
                        obscureText: false,
                        keyboardType: TextInputType.name,
                      ),
                      SizedBox(
                        height: SizeConfig.defaultSize! * 2,
                      ),
                      CustomTextFeildWithLable(
                        onClick: (val) {},
                        suffixWidget: Icon(
                          Icons.person,
                          color: primaryGreenColor,
                          size: 25,
                        ),
                        lableText: "*اسم المسؤول",
                        obscureText: false,
                        keyboardType: TextInputType.name,
                      ),
                      SizedBox(
                        height: SizeConfig.defaultSize! * 2,
                      ),
                      CustomTextFeildWithLable(
                        onClick: (val) {
                          setState(() {
                            // _phoneNumber = val ;
                          });
                        },

                        keyboardType: TextInputType.phone,
                        obscureText: false,
                        lableText: "*رقم الجوال",
                        // lableText:AppLocal.of(context).getTranslated( "رقم الجوال*"),
                        iconcolor: primaryGreenColor,

                        suffixWidget:
                            Image.asset("assets/images/phone_icon.png"),
                      ),
                      SizedBox(
                        height: SizeConfig.defaultSize! * 2,
                      ),

                      CustomTextFeildWithLable(
                          onClick: (val) {},
                          suffixWidget: Image.asset("assets/images/mail.png"),
                          lableText: "*البريد الالكترونى",
                          obscureText: false,
                          keyboardType: TextInputType.name),
                      SizedBox(
                        height: SizeConfig.defaultSize! * 2,
                      ),
                      CustomTextFeildWithLable(
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
                          lableText: "*المنطقه",
                          obscureText: false,
                          keyboardType: TextInputType.name),
                      SizedBox(
                        height: SizeConfig.defaultSize! * 2,
                      ),
                      CustomTextFeildWithLable(
                          onClick: (val) {},
                          suffixWidget: Icon(
                            Icons.add_location,
                            color: primaryGreenColor,
                            size: 25,
                          ),
                          //size: 30,

                          //Image.asset("assets/images/map-marker.png",height: 10,width: 10,),
                          lableText: "*العنوان",
                          obscureText: false,
                          keyboardType: TextInputType.name),
                      SizedBox(
                        height: SizeConfig.defaultSize! * 2,
                      ),
                      CustomTextFeildWithLable(
                        onClick: (val) {},
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: _isObscure1,
                        lableText: "كلمة المرور",
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
                        onClick: (val) {},
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: _isObscure2,
                        lableText: " تأكيد كلمة المرور",
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
                                "البطاقه الوطنيه (الهوايه) - اماميه",
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
                                "البطاقه الوطنيه (الهوايه) - خلفيه",
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
                                "بطاقه السكن - اماميه",
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
                                "بطاقه السكن - خلفيه",
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
                                "التموينيه",
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
                                "المكتب/المحل",
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
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return Dialog(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0)),
                                    //this right here
                                    child: Container(
                                      height: SizeConfig.defaultSize! * 30,
                                      child: Container(
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
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
                                                Image.asset(
                                                    "assets/images/layer3.png"),
                                              ],
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: SizeConfig.defaultSize! *
                                                      1.5),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "طلبك قيدالمراجعة من قبل الادارة",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontFamily: "Dubai",
                                                        color: Colors.black87,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                });
                          },
                          child: Center(
                            child: Text(
                              "اضافة",
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
*/
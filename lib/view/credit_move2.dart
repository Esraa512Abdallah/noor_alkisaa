import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:noor_alkisaa/helper/constance.dart';
import 'package:noor_alkisaa/helper/sized_config.dart';
import 'package:noor_alkisaa/view/widgets/custom_gradient_button.dart';

class CreditMove2 extends StatefulWidget {
  const CreditMove2({Key? key}) : super(key: key);

  @override
  _CreditMove2State createState() => _CreditMove2State();
}

class _CreditMove2State extends State<CreditMove2> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("حركه الرصيد"),
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
      body: Container(
        padding: EdgeInsets.only(
          left: SizeConfig.defaultSize! * 1.0,
          right: SizeConfig.defaultSize! * 1.0,
          top: SizeConfig.defaultSize! * 2.0,
        ),
        child: Column(
          children: [
            Card(
              elevation: 5.0,
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 12),
                            child: Column(
                              children: [
                                Image.asset("assets/images/istockphoto.png")
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "مركز ريحانة",
                                style: Theme.of(context).textTheme.headline3,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "اسم المسؤول : ",
                                    style:
                                        Theme.of(context).textTheme.headline2,
                                  ),
                                  Text(
                                    "خالد احمد",
                                    style:
                                        Theme.of(context).textTheme.headline2,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "الرقم التعريفي : ",
                                    style:
                                        Theme.of(context).textTheme.headline2,
                                  ),
                                  Text(
                                    "DEL985458452",
                                    style:
                                        Theme.of(context).textTheme.headline2,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.grey[300],
                      endIndent: SizeConfig.defaultSize! * 1.5,
                      indent: SizeConfig.defaultSize! * 1.5,
                      height: SizeConfig.defaultSize! * 1.5,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: SizeConfig.defaultSize! * 0.8,
                          bottom: SizeConfig.defaultSize! * 1.0,
                        ),
                        child: GestureDetector(
                          child: Text(
                            "اعاده الارسال",
                            style: TextStyle(
                                color: primaryGreenColor,
                                fontFamily: "Dubai",
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return Dialog(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(15.0)),
                                    //this right here
                                    child: Container(
                                      height: SizeConfig.defaultSize! * 31,
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
                                                Center(
                                                  child: Stack(
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
                                                        top: 30,
                                                        left: 30,
                                                        child: Image.asset(
                                                            "assets/images/Path.png"),
                                                      ),
                                                    ],
                                                  ),
                                                  // Image.asset("assets/images/Ellipse 2296.png"),
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
                                                  "هل انت متاكد من تم تحويل مبلغ10.000د.ع",
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontFamily: "Dubai",
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.w500),
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
                                                  "لمركز ريان",
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontFamily: "Dubai",
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.w500),
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
                                                  "الرقم التعريفي:SEL985458452",
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontFamily: "Dubai",
                                                      color: Colors.grey,
                                                      fontWeight: FontWeight.w500),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                                  child: CustomgradentButton(
                                                    buttonWidth: SizeConfig.defaultSize!*30,

                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                      showDialog(
                                                          context: context,
                                                          builder: (BuildContext context) {
                                                            return Dialog(
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                  BorderRadius.circular(15.0)),
                                                              //this right here
                                                              child: Container(
                                                                height: SizeConfig.defaultSize! * 23,
                                                                child: Container(
                                                                  child: Column(
                                                                    children: [
                                                                      Row(
                                                                        children: [
                                                                          Padding(
                                                                            padding:
                                                                             EdgeInsets.only(
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
                                                                          Center(
                                                                            child: Stack(
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
                                                                                  top: 30,
                                                                                  left: 30,
                                                                                  child: Image.asset(
                                                                                      "assets/images/Path.png"),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            // Image.asset("assets/images/Ellipse 2296.png"),
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
                                                                            "تم تحويل مبلغ10.000د.ع لمركز ريان",
                                                                            style: TextStyle(
                                                                                fontSize: 17,
                                                                                fontFamily: "Dubai",
                                                                                color: Colors.black,
                                                                                fontWeight: FontWeight.w500),
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
                                                                            "الرقم التعريفي:SEL985458452",
                                                                            style: TextStyle(
                                                                                fontSize: 17,
                                                                                fontFamily: "Dubai",
                                                                                color: Colors.grey,
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


                                                      // Navigator.pushNamed(
                                                      //     context, "ForgetPasswordScreen2");
                                                    },
                                                    child: Center(
                                                      child: Text(
                                                        "تحويل",
                                                        style: Theme.of(context).textTheme.button,
                                                      ),
                                                    ),
                                                    borderColor: Colors.white,
                                                    alignment: Alignment.center,
                                                    buttonheight: SizeConfig.defaultSize! * 5.0,


                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                });

                            // Navigator.pushNamed(
                            //     context, "ForgetPasswordScreen2");
                          },
                        ),
                      ),
                    ]),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.defaultSize! * 2.0,
            ),
            Container(

              child: Padding(
                padding: EdgeInsets.only(
                  right: SizeConfig.defaultSize! * 2.0,
                  left: SizeConfig.defaultSize! * 2.0,
                  bottom: SizeConfig.defaultSize! * 2.0,
                ),
                child: Column(
                  children: [
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.start,
                    //   children: [
                    //
                    //   ],
                    // ),
                    Divider(
                      color: Colors.grey,
                     // endIndent: SizeConfig.defaultSize! * 1.5,
                      //indent: SizeConfig.defaultSize! * 1.5,
                      height: SizeConfig.defaultSize! * 1.5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "رقم العملية",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Dubai",
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "6952141212",
                          style: TextStyle(
                              color: primaryGreenColor,
                              fontFamily: "Dubai",
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "الرصيدالمضاف",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Dubai",
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "10.000",
                          style: TextStyle(
                              color: primaryGreenColor,
                              fontFamily: "Dubai",
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "الرصيدالسابق",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Dubai",
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "50.000",
                          style: TextStyle(
                              color: primaryGreenColor,
                              fontFamily: "Dubai",
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "الرصيدالاجمالي",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Dubai",
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "60.000",
                          style: TextStyle(
                              color: primaryGreenColor,
                              fontFamily: "Dubai",
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "التاريخ والوقت",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Dubai",
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "22/06/2021-03:30Pm",
                          style: TextStyle(
                              color: primaryGreenColor,
                              fontFamily: "Dubai",
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "رقم الجوال",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Dubai",
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "0123456789",
                          style: TextStyle(
                              color: primaryGreenColor,
                              fontFamily: "Dubai",
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "البريد الالكتروني",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Dubai",
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "username@mail.com",
                          style: TextStyle(
                              color: primaryGreenColor,
                              fontFamily: "Dubai",
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "المنطقه",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Dubai",
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "القادسية",
                          style: TextStyle(
                              color: primaryGreenColor,
                              fontFamily: "Dubai",
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "العنوان",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Dubai",
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                        GestureDetector(
                          //child: Image.asset("assets/images/eye.png"),

                          child: Image.asset("assets/images/location.png"),
                          onTap: (){},

                        ),

                        // Text(
                        //   "القادسية",
                        //   style: TextStyle(
                        //       color: primaryGreenColor,
                        //       fontFamily: "Dubai",
                        //       fontSize: 16,
                        //       fontWeight: FontWeight.w600),
                        // ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

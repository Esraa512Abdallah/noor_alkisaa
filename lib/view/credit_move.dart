import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:noor_alkisaa/helper/constance.dart';
import 'package:noor_alkisaa/helper/sized_config.dart';

class CreditMove extends StatefulWidget {
  const CreditMove({Key? key}) : super(key: key);

  @override
  _CreditMoveState createState() => _CreditMoveState();
}

class _CreditMoveState extends State<CreditMove> {
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
              child: Padding(
                padding: EdgeInsets.only(
                  right: SizeConfig.defaultSize! * 2.0,
                  left: SizeConfig.defaultSize! * 2.0,
                  // top:  SizeConfig.defaultSize! * 1.5,
                  bottom: SizeConfig.defaultSize! * 2.0,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "ارسال رصيد",
                          style: TextStyle(
                            fontSize: 17,
                            color: primaryColor,
                            fontFamily: "Dubai",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.grey,
                      endIndent: SizeConfig.defaultSize! * 1.5,
                      indent: SizeConfig.defaultSize! * 1.5,
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
                          "نقطةالبيع",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Dubai",
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "مركز ريحانة",
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
                    Divider(
                      color: Colors.grey,
                      endIndent: SizeConfig.defaultSize! * 1.5,
                      indent: SizeConfig.defaultSize! * 1.5,
                      height: SizeConfig.defaultSize! * 1.5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "اعاده الارسال",
                          style: TextStyle(
                              color: primaryGreenColor,
                              fontFamily: "Dubai",
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        VerticalDivider(
                          color: Colors.black,
                          indent: 3,
                          endIndent: 3,
                          width: SizeConfig.defaultSize! * 1.0,

                        ),
                        Row(
                          children: [
                            Image.asset("assets/images/eye.png"),
                            Text(
                              "التفاصيل",
                              style: TextStyle(
                                  color: primaryColor,
                                  fontFamily: "Dubai",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.defaultSize!*2.0,
            ),

            Card(
              elevation: 5.0,
              child: Padding(
                padding: EdgeInsets.only(
                  right: SizeConfig.defaultSize! * 2.0,
                  left: SizeConfig.defaultSize! * 2.0,
                  // top:  SizeConfig.defaultSize! * 1.5,
                  bottom: SizeConfig.defaultSize! * 2.0,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "استلام رصيد",
                          style: TextStyle(
                            fontSize: 17,
                            color: primaryColor,
                            fontFamily: "Dubai",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.grey,
                      endIndent: SizeConfig.defaultSize! * 1.5,
                      indent: SizeConfig.defaultSize! * 1.5,
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
                          "الرصيدالمستلم",
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

import 'package:flutter/material.dart';
import 'package:noor_alkisaa/helper/constance.dart';
import 'package:noor_alkisaa/helper/sized_config.dart';

class SellPoint extends StatefulWidget {
  const SellPoint({Key? key}) : super(key: key);

  @override
  _SellPointState createState() => _SellPointState();
}

class _SellPointState extends State<SellPoint> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("نقطه البيع"),
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
              children: [
                Divider(
                  color: Colors.grey,
                  endIndent: SizeConfig.defaultSize! * 1.5,
                  indent: SizeConfig.defaultSize! * 1.5,
                ),
                Card(
                  elevation: 5.0,
                  child: Padding(
                    padding: EdgeInsets.only(
                      right: SizeConfig.defaultSize! * 2.0,
                      left: SizeConfig.defaultSize! * 2.0,
                      top: SizeConfig.defaultSize! * 1.5,
                      bottom: SizeConfig.defaultSize! * 2.0,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "نقطةالبيع",
                              style: TextStyle(
                                fontSize: 17,
                                color: primaryColor,
                                fontFamily: "Dubai",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "مركز ريحانة",
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
                          height: SizeConfig.defaultSize! * 2.5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "الرقم التعريفي",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Dubai",
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "DEL985458452",
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
                              "اسم المسؤول",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Dubai",
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "خالد محمد",
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
                              "المنطقة",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Dubai",
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "بغداد",
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
                              "الرصيدالحالى",
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
                        Divider(
                          color: Colors.grey,
                          endIndent: SizeConfig.defaultSize! * 1.5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Image.asset("assets/images/edit.png"),
                                Text(
                                  "تعديل",
                                  style: TextStyle(
                                      color: primaryGreenColor,
                                      fontFamily: "Dubai",
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            VerticalDivider(
                              color: Colors.black,
                              indent: 3,
                              endIndent: 3,
                              width: SizeConfig.defaultSize! * 1.0,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.delete,
                                  color: Colors.grey,
                                ),
                                Text(
                                  "حذف",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: "Dubai",
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
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
                  height: SizeConfig.defaultSize! * 2.0,
                ),
                Card(
                  elevation: 5.0,
                  child: Padding(
                    padding: EdgeInsets.only(
                      right: SizeConfig.defaultSize! * 2.0,
                      left: SizeConfig.defaultSize! * 2.0,
                      top: SizeConfig.defaultSize! * 1.5,
                      bottom: SizeConfig.defaultSize! * 2.0,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "نقطةالبيع",
                              style: TextStyle(
                                fontSize: 17,
                                color: primaryColor,
                                fontFamily: "Dubai",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "مكتب المصطفي",
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
                          height: SizeConfig.defaultSize! * 4.5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "الرقم التعريفي",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Dubai",
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "DEL985458452",
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
                              "اسم المسؤول",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Dubai",
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "خالد محمد",
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
                              "المنطقة",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Dubai",
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "بغداد",
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
                              "الرصيدالحالى",
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

                        Container(

                          decoration: BoxDecoration(
                            color: primaryPink2Color,
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),


                          padding: EdgeInsets.only(
                            right: SizeConfig.defaultSize! * 3.5,
                            left: SizeConfig.defaultSize! * 3.5,
                            top: SizeConfig.defaultSize! * 0.3,
                            bottom: SizeConfig.defaultSize! * 0.3,


                          ),
                          margin:EdgeInsets.only(

                            top: SizeConfig.defaultSize! * 0.4,



                          ),
                          child: Center(
                            child: Text(
                              "المبلغ المطلوب سداده : 20.000 د.ع",
                              style: TextStyle(
                                color: primaryColor,
                                fontFamily: "Dubai",
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),

                        Divider(
                          color: Colors.grey,
                         height: SizeConfig.defaultSize! * 2.5,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Image.asset("assets/images/edit.png"),
                                Text(
                                  "تعديل",
                                  style: TextStyle(
                                      color: primaryGreenColor,
                                      fontFamily: "Dubai",
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            VerticalDivider(
                              color: Colors.black,
                              indent: 3,
                              endIndent: 3,
                              //width: SizeConfig.defaultSize! * 2.0,
                              width: 3,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.delete,
                                  color: Colors.grey,
                                ),
                                Text(
                                  "حذف",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: "Dubai",
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}

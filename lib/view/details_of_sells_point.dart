import 'package:flutter/material.dart';
import 'package:noor_alkisaa/helper/constance.dart';
import 'package:noor_alkisaa/helper/sized_config.dart';
import 'package:noor_alkisaa/view/widgets/custom_gradient_button.dart';

class DetailsOfSellsPoint extends StatefulWidget {
  const DetailsOfSellsPoint({Key? key}) : super(key: key);

  @override
  _DetailsOfSellsPointState createState() => _DetailsOfSellsPointState();
}

class _DetailsOfSellsPointState extends State<DetailsOfSellsPoint> {
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
        child: Column(
          children: [
            Expanded(
              flex: 7,
              child: Container(
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
                                    padding: EdgeInsets.only(
                                      top: SizeConfig.defaultSize! * 1.5,
                                    ),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                            "assets/images/istockphoto.png")
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "مركز ريحانة",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline3,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "اسم المسؤول : ",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline2,
                                          ),
                                          Text(
                                            "خالد احمد",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline2,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "الرقم التعريفي : ",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline2,
                                          ),
                                          Text(
                                            "DEL985458452",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline2,
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
                            Padding(
                              padding: EdgeInsets.all(
                                SizeConfig.defaultSize! * 0.2,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
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
                            ),
                            Divider(
                              color: Colors.grey[400],
                              endIndent: SizeConfig.defaultSize! * 1.5,
                              indent: SizeConfig.defaultSize! * 1.5,
                              // height: SizeConfig.defaultSize! * 1.5,
                            ),
                            Padding(
                              padding: EdgeInsets.all(
                                SizeConfig.defaultSize! * 0.2,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "تغير كلمة المرور",
                                    style: TextStyle(
                                        color: primaryColor,
                                        fontFamily: "Dubai",
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
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
                              color: Colors.grey[400],
                              height: SizeConfig.defaultSize! * 1.5,
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
                            ),
                            Row(
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

                                  child:
                                      Image.asset("assets/images/location.png"),
                                  onTap: () {},
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "الرصيدالحالي",
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
                                  "المحول له",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "Dubai",
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  "50.00000",
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                              ),
                              padding: EdgeInsets.only(
                                right: SizeConfig.defaultSize! * 3.5,
                                left: SizeConfig.defaultSize! * 3.5,
                                top: SizeConfig.defaultSize! * 0.3,
                                bottom: SizeConfig.defaultSize! * 0.3,
                              ),
                              margin: EdgeInsets.only(
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
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomgradentButton(
                      buttonheight: SizeConfig.defaultSize!*5,
                      buttonWidth: SizeConfig.screenWidth!/2.2,
                      onPressed: () {},
                      child: Text("سداد",  style: Theme.of(context).textTheme.button,),
                    ),
                    CustomgradentButton(
                      buttonheight: SizeConfig.defaultSize!*5,
                      buttonWidth: SizeConfig.screenWidth!/2.2,
                      onPressed: () {},
                      child: Text("تحويل رصيد",  style: Theme.of(context).textTheme.button,),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

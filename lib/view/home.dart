import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:noor_alkisaa/gen/assets.gen.dart';
import 'package:noor_alkisaa/helper/constance.dart';
import 'package:noor_alkisaa/helper/sized_config.dart';
import 'package:noor_alkisaa/controller/app_local.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        centerTitle: true,
        title: Text(AppLocal.of(context).getTranslated("الرئيسية")),
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
        leading: Padding(
          padding: const EdgeInsets.only(top: 5.0, right: 2.8),
          child: Badge(
            badgeColor: Colors.white,
            badgeContent: Text(
              "3",
              style: TextStyle(
                  color: primaryColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w800),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 15,
                  top: 7,
                  child: SizedBox(
                    height: 40,
                    width: 40,
                    child: Image.asset(
                      "assets/images/notification_ground.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  top: 18,
                  left: 27,
                  child: Image.asset("assets/images/notification-filled.png"),
                ),
              ],
            ),
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              _scaffoldKey.currentState!.openEndDrawer();
            },
            child: Assets.images.drawerIcon.image(),
          ),
        ],
      ),
      endDrawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: Assets.images.layer3.image(),
            ),
            Divider(
              endIndent: SizeConfig.defaultSize! * 1,
              indent: SizeConfig.defaultSize! * 1,
              color: Colors.grey.shade300,
              thickness: 1.5,
            ),
            Container(
              height: 60,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Text(
                          AppLocal.of(context).getTranslated("رقم الجوال"),
                          style: TextStyle(
                            color: primaryGreenColor,
                            fontFamily: "Dubai",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "01111111111",
                          style: TextStyle(
                            color: primaryGreyColor,
                            fontFamily: "Dubai",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: VerticalDivider(
                      color: Colors.grey.shade300,
                      endIndent: SizeConfig.defaultSize! * 0.8,
                      indent: SizeConfig.defaultSize! * 0.8,
                      thickness: 1.5,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Text(
                          AppLocal.of(context).getTranslated("الاسم"),
                          style: TextStyle(
                            color: primaryGreenColor,
                            fontFamily: "Dubai",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "مصطفى محمد",
                          style: TextStyle(
                            color: primaryGreyColor,
                            fontFamily: "Dubai",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              endIndent: SizeConfig.defaultSize! * 1,
              indent: SizeConfig.defaultSize! * 1,
              color: Colors.grey.shade300,
              thickness: 1.5,
              height: 7,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppLocal.of(context).getTranslated("الرقم التعريفى"),
                  style: TextStyle(
                    color: primaryGreyColor,
                    fontFamily: "Dubai",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  " : ",
                  style: TextStyle(
                    color: primaryGreyColor,
                    fontFamily: "Dubai",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "DELL5864218",
                  style: TextStyle(
                    color: primaryGreyColor,
                    fontFamily: "Dubai",
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Divider(
              endIndent: SizeConfig.defaultSize! * 1,
              indent: SizeConfig.defaultSize! * 1,
              color: Colors.grey.shade300,
              thickness: 1.5,
              height: 7,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "HomeScreen");
              },
              child: Padding(
                padding: EdgeInsets.only(
                  left: SizeConfig.defaultSize! * 1.5,
                  right: SizeConfig.defaultSize! * 1.5,
                  top: SizeConfig.defaultSize! * 1.0,
                ),
                child: Row(
                  children: [
                    Image.asset("assets/images/home-solid.png"),
                    SizedBox(
                      width: SizeConfig.defaultSize! * 1.5,
                    ),
                    Text(
                      AppLocal.of(context).getTranslated("الرئيسية"),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: "Dubai",
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.only(
                  left: SizeConfig.defaultSize! * 1.5,
                  right: SizeConfig.defaultSize! * 1.5,
                  top: SizeConfig.defaultSize! * 1.0,
                ),
                child: Row(
                  children: [
                    Image.asset("assets/images/editalt.png"),
                    SizedBox(
                      width: SizeConfig.defaultSize! * 1.5,
                    ),
                    Text(
                      AppLocal.of(context).getTranslated("طلب تعديل بيانات"),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: "Dubai",
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.only(
                  left: SizeConfig.defaultSize! * 1.5,
                  right: SizeConfig.defaultSize! * 1.5,
                  top: SizeConfig.defaultSize! * 1.0,
                ),
                child: Row(
                  children: [
                    Image.asset("assets/images/add-to-list.png"),
                    SizedBox(
                      width: SizeConfig.defaultSize! * 1.5,
                    ),
                    Text(
                      AppLocal.of(context).getTranslated("إضافة صلاحيات"),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: "Dubai",
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.only(
                  left: SizeConfig.defaultSize! * 1.5,
                  right: SizeConfig.defaultSize! * 1.5,
                  top: SizeConfig.defaultSize! * 1.0,
                ),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/repeat-2.png",
                    ),
                    SizedBox(
                      width: SizeConfig.defaultSize! * 1.5,
                    ),
                    Text(
                      AppLocal.of(context).getTranslated("طلبات الرصيد"),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: "Dubai",
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.only(
                  left: SizeConfig.defaultSize! * 1.5,
                  right: SizeConfig.defaultSize! * 1.5,
                  top: SizeConfig.defaultSize! * 1.0,
                ),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/key-solid.png",
                    ),
                    SizedBox(
                      width: SizeConfig.defaultSize! * 1.5,
                    ),
                    Text(
                      AppLocal.of(context).getTranslated("تغيير كلمة المرور"),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: "Dubai",
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.only(
                  left: SizeConfig.defaultSize! * 1.5,
                  right: SizeConfig.defaultSize! * 1.5,
                  top: SizeConfig.defaultSize! * 1.0,
                ),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/settings-solid.png",
                    ),
                    SizedBox(
                      width: SizeConfig.defaultSize! * 1.5,
                    ),
                    Text(
                      AppLocal.of(context).getTranslated("الاعدادت"),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: "Dubai",
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.only(
                  left: SizeConfig.defaultSize! * 1.5,
                  right: SizeConfig.defaultSize! * 1.5,
                  top: SizeConfig.defaultSize! * 1.0,
                ),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/logout.png",
                    ),
                    SizedBox(
                      width: SizeConfig.defaultSize! * 1.5,
                    ),
                    Text(
                      AppLocal.of(context).getTranslated("تسجيل الخروج"),
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 20,
                        fontFamily: "Dubai",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Card(
                  elevation: 2.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    side: BorderSide(color: Colors.grey.shade200, width: 1),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          color: Colors.white,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      top: SizeConfig.defaultSize! * 2.0),
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
                                      "مكتب المصطفي",
                                      style:
                                          Theme.of(context).textTheme.headline3,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          AppLocal.of(context).getTranslated(
                                              "الرقم التعريفي : "),
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
                                    Text(
                                      "0123456789",
                                      style:
                                          Theme.of(context).textTheme.headline2,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          AppLocal.of(context)
                                              .getTranslated("اسم المسؤول : "),
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
                                          "القادسيه",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline2,
                                        ),
                                        Text(
                                          ",",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline2,
                                        ),
                                        Text(
                                          "بغداد",
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
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(5.0),
                              bottomLeft: Radius.circular(5.0),
                            ),
                            color: primaryWheatColor,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal:
                                          SizeConfig.defaultSize! * 2.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            AppLocal.of(context).getTranslated(
                                                "الرصيد الحالي : "),
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline3,
                                          ),
                                          Text(
                                            "90.000 ",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline3,
                                          ),
                                          Text(
                                            AppLocal.of(context)
                                                .getTranslated("د.ع"),
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline3,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            AppLocal.of(context).getTranslated(
                                                "الرصيد المستخدم : "),
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline3,
                                          ),
                                          Text(
                                            "20.000 ",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline3,
                                          ),
                                          Text(
                                            AppLocal.of(context)
                                                .getTranslated("د.ع"),
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline3,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    right: SizeConfig.defaultSize! * 1.2,
                                    left: SizeConfig.defaultSize! * 0.3,
                                    bottom: SizeConfig.defaultSize! * 3.0,
                                  ),
                                  child: Container(
                                    height: SizeConfig.defaultSize! * 2.8,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.0),
                                      gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Color(0xfff8b859),
                                          Color(0xfff5811e)
                                        ],
                                        //stops: [0.0, 1.0],
                                      ),
                                    ),
                                    child: FlatButton(
                                      child: Text(
                                        AppLocal.of(context)
                                            .getTranslated('ذهبي'),
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Theme(
                data: ThemeData(
                  dividerTheme: DividerThemeData(
                    endIndent: SizeConfig.defaultSize! * 0.8,
                    indent: SizeConfig.defaultSize! * 0.8,
                    color: primaryGreyColor2,
                  ),
                ),
                child: Divider()),
            Expanded(
                flex: 4,
                child: Container(
                  padding: EdgeInsets.only(top: SizeConfig.defaultSize! * 1.5),
                  child: GridView(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(
                              color: Colors.grey.shade200, width: 1.5),
                        ),
                        child: FlatButton(
                          onPressed: () {},
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/images/bill.png"),
                                Text(
                                  AppLocal.of(context)
                                      .getTranslated("حركه الرصيد"),
                                  style: TextStyle(
                                      color: primaryColor,
                                      fontFamily: 'Dubai',
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          ),
                        ),
                        elevation: 0.0,
                      ),
                      Card(
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(
                              color: Colors.grey.shade200, width: 1.5),
                        ),
                        child: FlatButton(
                          onPressed: () {},
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/images/smartphone.png"),
                                Text(
                                  AppLocal.of(context)
                                      .getTranslated("تحويل رصيد"),
                                  style: TextStyle(
                                      color: primaryColor,
                                      fontFamily: 'Dubai',
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(
                              color: Colors.grey.shade200, width: 1.5),
                        ),
                        child: FlatButton(
                          onPressed: () {},
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/images/save-money.png"),
                                Text(
                                  AppLocal.of(context)
                                      .getTranslated("طلب رصيد"),
                                  style: TextStyle(
                                      color: primaryColor,
                                      fontFamily: 'Dubai',
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(
                              color: Colors.grey.shade200, width: 1.5),
                        ),
                        child: FlatButton(
                          onPressed: () {},
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/images/online.png"),
                                Text(
                                  AppLocal.of(context)
                                      .getTranslated("كشف حساب"),
                                  style: TextStyle(
                                      color: primaryColor,
                                      fontFamily: 'Dubai',
                                      fontSize: 13,
                                      fontWeight: FontWeight.normal),
                                ),
                                Text(
                                  AppLocal.of(context)
                                      .getTranslated("نقاط البيع"),
                                  style: TextStyle(
                                      color: primaryColor,
                                      fontFamily: 'Dubai',
                                      fontSize: 13,
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(
                              color: Colors.grey.shade200, width: 1.5),
                        ),
                        child: FlatButton(
                          onPressed: () {},
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/images/payment.png"),
                                Text(
                                  AppLocal.of(context)
                                      .getTranslated("كشف حساب"),
                                  style: TextStyle(
                                      color: primaryColor,
                                      fontFamily: 'Dubai',
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(
                              color: Colors.grey.shade200, width: 1.5),
                        ),
                        child: FlatButton(
                          onPressed: () {},
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/images/shop.png"),
                                Text(
                                  AppLocal.of(context)
                                      .getTranslated("نقاط البيع"),
                                  style: TextStyle(
                                      color: primaryColor,
                                      fontFamily: 'Dubai',
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 1,
                    ),
                  ),
                  //  color: Colors.green,
                )),
          ],
        ),
      ),
    );
  }
}

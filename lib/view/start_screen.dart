import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:noor_alkisaa/helper/constance.dart';
import 'package:noor_alkisaa/helper/sized_config.dart';
import 'package:noor_alkisaa/view/widgets/custom_button.dart';
import 'package:noor_alkisaa/controller/lang.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: SizeConfig.screenHeight! / 2.1,
            width: SizeConfig.screenWidth!,
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
            child: Center(
              child: Image.asset("assets/images/layer2.png"),
            ),
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(top: SizeConfig.defaultSize! * 14),
            height: SizeConfig.screenHeight! / 2,
            child: Column(
              children: [
                Center(
                  child: Text(
                    "اختر لغه التطبيق",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
                Center(
                  child: Text(
                    "Choose the language",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Dubai'),
                  ),
                ),
                Divider(
                  endIndent: 155,
                  indent: 155,
                  color: Color(0xff3ED6A8),
                  thickness: 3.2,
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 13),
                  child: Column(
                    children: [
                      GetBuilder<LangViewModel>(
                          init: LangViewModel(),
                          builder: (controller) {
                            return CustomButton(
                              buttonWidth: MediaQuery.of(context).size.width,
                              borderRadius: 5.0,
                              buttonHeight: SizeConfig.defaultSize! * 5.8,
                              borderColor: Colors.grey.shade300,
                              color: Colors.white,
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.arrow_back_ios,
                                    color: primaryColor,
                                    size: 22,
                                  ),
                                  Text(
                                    "العربيه",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontFamily: 'Dubai',
                                    ),
                                  ),
                                ],
                              ),
                              onPressed: () {
                                controller.changLang("ar");
                                Get.updateLocale(Locale('ar', ''));
                                Navigator.pushNamed(context, "SignInScreen");
                              },
                            );
                          }),
                      SizedBox(
                        height: 20,
                      ),
                      GetBuilder<LangViewModel>(
                          init: LangViewModel(),
                          builder: (controller) {
                            return CustomButton(
                              buttonWidth: MediaQuery.of(context).size.width,
                              borderRadius: 5.0,
                              buttonHeight: SizeConfig.defaultSize! * 5.8,
                              borderColor: Colors.grey.shade300,
                              color: Colors.white,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.arrow_back_ios,
                                    color: primaryColor,
                                    size: 22,
                                  ),
                                  Text(
                                    "English",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontFamily: 'Dubai',
                                    ),
                                  ),
                                ],
                              ),
                              onPressed: () {
                                controller.changLang("en");
                                Get.updateLocale(Locale('en', ''));

                                Navigator.pushNamed(context, "SignInScreen");
                              },
                            );
                          }),
                    ],
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

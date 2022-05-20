import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:noor_alkisaa/gen/assets.gen.dart';
import 'package:noor_alkisaa/view/widgets/confirm_request_dialog.dart';
import 'package:noor_alkisaa/view/widgets/custom_gradient_button.dart';

import '../helper/constance.dart';
import '../helper/sized_config.dart';
import '../controller/app_local.dart';

class BalanceRequest extends StatelessWidget {
  String _name = "مركز ريحانه";

  String _id = "SEL1584526";
  int _requestBalance = 300;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppLocal.of(context).getTranslated("طلبات الرصيد"),
        ),
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
      body: ListView.builder(
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.only(
                  top: SizeConfig.defaultSize! * 1.0,
                  left: SizeConfig.defaultSize! * 1.0,
                  right: SizeConfig.defaultSize! * 1.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: primaryGreyColor2, width: 1.5),
                  color: Colors.white,
                ),
                child: Container(
                  height: MediaQuery.of(context).size.height / 4.5,
                  padding: EdgeInsets.only(top: SizeConfig.defaultSize! * 1.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  child: Assets.images.layer3.image(
                                      width: 120,
                                      height: 120,
                                      fit: BoxFit.cover),
                                ),
                                // Assets.images.layer3.image(),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "$_name",
                                      style: TextStyle(

                                          color: primaryColor,
                                          fontSize: 18,
                                          fontFamily: "Dubai"),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      AppLocal.of(context)
                                          .getTranslated("الرقم التعريفي : "),
                                      style: TextStyle(
                                          color: primaryGreyColor,
                                          fontSize: 18,
                                          fontFamily: "Dubai"),
                                    ),
                                    Text(
                                      "$_id ",
                                      style: TextStyle(
                                          color: primaryGreyColor,
                                          fontSize: 18,
                                          fontFamily: "Dubai"),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      AppLocal.of(context)
                                          .getTranslated("الرصيد المطلوب : "),
                                      style: TextStyle(
                                          color: primaryGreenColor,
                                          fontSize: 18,
                                          fontFamily: "Dubai"),
                                    ),
                                    Text(
                                      "$_requestBalance",
                                      style: TextStyle(
                                          color: primaryGreenColor,
                                          fontSize: 18,
                                          fontFamily: "Dubai"),
                                    ),
                                    Text(
                                      AppLocal.of(context).getTranslated("د.ع"),
                                      style: TextStyle(
                                          color: primaryGreenColor,
                                          fontSize: 18,
                                          fontFamily: "Dubai"),
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
                        endIndent: SizeConfig.defaultSize! * 2.0,
                        indent: SizeConfig.defaultSize! * 2.0,
                        height: SizeConfig.defaultSize! * 3,
                        thickness: 1.2,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 40,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  // top: SizeConfig.defaultSize! * 0.8,
                                  bottom: SizeConfig.defaultSize! * 1.3,
                                ),
                                child: GestureDetector(
                                  child: Row(
                                    children: [
                                      //  Image.asset("assets/images/share.png"),
                                      //  Assets.images.share.image(height: 20,width: 20),
                                      Assets.images.share
                                          .image(height: 20, width: 20),
                                      Text(
                                        AppLocal.of(context)
                                            .getTranslated("تحويل الرصيد"),
                                        style: TextStyle(
                                            color: primaryColor,
                                            fontFamily: "Dubai",
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  onTap: () {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return ConfirmRequestDialog(
                                            dialogHeight:
                                                SizeConfig.defaultSize! * 33,
                                            widget: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Wrap(
                                                  children: [
                                                    Text(
                                                      '${AppLocal.of(context).getTranslated("هل انت متاكد من تحويل مبلغ ")} $_requestBalance ${AppLocal.of(context).getTranslated("د.ع")}',
                                                      maxLines: 2,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          overflow:
                                                              TextOverflow.fade,
                                                          fontSize: 17,
                                                          fontFamily: "Dubai",
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.w500),
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
                                                      AppLocal.of(context)
                                                          .getTranslated("ل"),
                                                      style: TextStyle(
                                                          overflow:
                                                              TextOverflow.fade,
                                                          fontSize: 17,
                                                          fontFamily: "Dubai",
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                    Text(
                                                      "$_name",
                                                      style: TextStyle(
                                                          overflow:
                                                              TextOverflow.fade,
                                                          fontSize: 17,
                                                          fontFamily: "Dubai",
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      AppLocal.of(context)
                                                          .getTranslated(
                                                              "الرقم التعريفي : "),
                                                      style: TextStyle(
                                                          fontSize: 17,
                                                          fontFamily: "Dubai",
                                                          color: Colors.grey,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                    Text(
                                                      "$_id ",
                                                      style: TextStyle(
                                                          fontSize: 17,
                                                          fontFamily: "Dubai",
                                                          color: Colors.grey,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          horizontal: 10.0),
                                                      child:
                                                          CustomgradentButton(
                                                        buttonWidth: SizeConfig
                                                                .defaultSize! *
                                                            30,
                                                        onPressed: () {
                                                          Navigator.pop(
                                                              context);
                                                          showDialog(
                                                              context: context,
                                                              builder:
                                                                  (BuildContext
                                                                      context) {
                                                                return ConfirmRequestDialog(
                                                                  dialogHeight:
                                                                      SizeConfig
                                                                              .defaultSize! *
                                                                          26,
                                                                  widget:
                                                                      Column(
                                                                    children: [
                                                                      Row(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.center,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Text(
                                                                            AppLocal.of(context).getTranslated("تم تحويل مبلغ"),
                                                                            style: TextStyle(
                                                                                fontSize: 18,
                                                                                fontFamily: "Dubai",
                                                                                color: Colors.black,
                                                                                fontWeight: FontWeight.w500),
                                                                          ),
                                                                          Text(
                                                                            "$_requestBalance",
                                                                            style: TextStyle(
                                                                                fontSize: 18,
                                                                                fontFamily: "Dubai",
                                                                                color: Colors.black,
                                                                                fontWeight: FontWeight.w500),
                                                                          ),
                                                                          Text(
                                                                            AppLocal.of(context).getTranslated("د.ع"),
                                                                            style: TextStyle(
                                                                                fontSize: 18,
                                                                                fontFamily: "Dubai",
                                                                                color: Colors.black,
                                                                                fontWeight: FontWeight.w500),
                                                                          ),
                                                                          Text(
                                                                            AppLocal.of(context).getTranslated("ل"),
                                                                            style: TextStyle(
                                                                                fontSize: 18,
                                                                                fontFamily: "Dubai",
                                                                                color: Colors.black,
                                                                                fontWeight: FontWeight.w500),
                                                                          ),
                                                                          Text(
                                                                            "$_name",
                                                                            style: TextStyle(
                                                                                fontSize: 18,
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
                                                                            AppLocal.of(context).getTranslated("الرقم التعريفي : "),
                                                                            style: TextStyle(
                                                                                fontSize: 17,
                                                                                fontFamily: "Dubai",
                                                                                color: primaryGreyColor,
                                                                                fontWeight: FontWeight.w500),
                                                                          ),
                                                                          Text(
                                                                            "$_id",
                                                                            style: TextStyle(
                                                                                fontSize: 17,
                                                                                fontFamily: "Dubai",
                                                                                color: primaryGreyColor,
                                                                                fontWeight: FontWeight.w500),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                );
                                                              });

                                                          // Navigator.pushNamed(
                                                          //     context, "ForgetPasswordScreen2");
                                                        },
                                                        child: Center(
                                                          child: Text(
                                                            "تحويل",
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .button,
                                                          ),
                                                        ),
                                                        borderColor:
                                                            Colors.white,
                                                        alignment:
                                                            Alignment.center,
                                                        buttonheight: SizeConfig
                                                                .defaultSize! *
                                                            5.0,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          );
                                        });

                                    // Navigator.pushNamed(
                                    //     context, "ForgetPasswordScreen2");
                                  },
                                ),
                              ),
                            ),
                          ]),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}

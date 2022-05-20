import 'package:flutter/material.dart';
import 'package:noor_alkisaa/helper/sized_config.dart';

import 'controller/app_local.dart';
import 'helper/constance.dart';

class OutstandingSellingPoint extends StatelessWidget {
  const OutstandingSellingPoint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppLocal.of(context).getTranslated("نقاط البيع المعلقه"),
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
            Navigator.pop(context);
            // do something
          },
        ),
        actions: <Widget>[
          GestureDetector(
            child: Image.asset("assets/images/question.png"),
            onTap: (){
              Navigator.pushNamed(context, "TechnicalSupport");
            },
          ),

        ],
      ),
      body: ListView.builder(
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.only(
                  top: SizeConfig.defaultSize! * 1.2,
                  left: SizeConfig.defaultSize! * 1.2,
                  right: SizeConfig.defaultSize! * 1.2),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: primaryGreyColor2, width: 1.5),
                  color: Colors.white,
                ),
                child: Container(
                  height: MediaQuery.of(context).size.height / 4.0,
                  padding: EdgeInsets.only(
                      top: SizeConfig.defaultSize! * 0.8,
                      left: SizeConfig.defaultSize! * 0.8,
                      right: SizeConfig.defaultSize! * 0.8,
                      bottom:SizeConfig.defaultSize! * 0.8, ),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "نقطه البيع",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: "Dubai",
                                  color: primaryColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "مركز ريحانه",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: "Dubai",
                                  color: primaryColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey[300],
                        endIndent: SizeConfig.defaultSize! * 1.0,
                        indent: SizeConfig.defaultSize! * 1.0,
                      //  height: SizeConfig.defaultSize! * 3,
                        thickness: 1.2,
                      ),
                      Expanded(
                          flex: 2,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "الرقم التعريفى",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: "Dubai",
                                        color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    "147852369",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: "Dubai",
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,

                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "اسم المسؤول",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: "Dubai",
                                        color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    "مصطفى محمد",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: "Dubai",
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )),
                      Divider(
                        color: Colors.grey[300],
                        endIndent: SizeConfig.defaultSize! * 1.0,
                        indent: SizeConfig.defaultSize! * 1.0,
                      //  height: SizeConfig.defaultSize! * 3,
                        thickness: 1.2,
                      ),
                      Expanded(
                          flex: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "جاري المراجعه",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: "Dubai",
                                  color:primaryGreenColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:noor_alkisaa/gen/assets.gen.dart';
import 'package:noor_alkisaa/helper/sized_config.dart';

import '../helper/constance.dart';
import '../controller/app_local.dart';

class AddPowers extends StatelessWidget {
  const AddPowers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppLocal.of(context).getTranslated("اضافه صلاحيات"),
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
            onTap: () {
              Navigator.pushNamed(context, "TechnicalSupport");
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
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
          child: Icon(Icons.add, size: 40),
        ),
      ),
      body: ListView.builder(
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.only(
                top: SizeConfig.defaultSize! * 1.2,
                left: SizeConfig.defaultSize! * 1.2,
                right: SizeConfig.defaultSize! * 1.2,
              ),
              child: Container(
                padding: EdgeInsets.all(
                  SizeConfig.defaultSize! * 0.8,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: primaryGreyColor2, width: 1.5),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "مصطفى محمد",
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: "Dubai",
                                color: primaryColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      AppLocal.of(context).getTranslated("الصلاحيات: "),
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: "Dubai",
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      AppLocal.of(context).getTranslated("تحويل رصيد"),
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: "Dubai",
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.grey[300],
                      endIndent: SizeConfig.defaultSize! * 1.0,
                      indent: SizeConfig.defaultSize! * 1.0,
                      //  height: SizeConfig.defaultSize! * 3,
                      thickness: 1.2,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Assets.images.edit.image(),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                    AppLocal.of(context).getTranslated("تعديل"),
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: "Dubai",
                                    color: primaryGreenColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ]),
                        ),
                        VerticalDivider(
                          color: Colors.grey.shade300,
                          endIndent: SizeConfig.defaultSize! * 0.8,
                          indent: SizeConfig.defaultSize! * 0.8,
                          thickness: 1.5,
                        ),
                        Expanded(
                          flex: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.delete,
                                color: primaryGreyColor,
                              ),
                              Text(
                                AppLocal.of(context).getTranslated("حذف"),
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: "Dubai",
                                  color: primaryGreyColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}

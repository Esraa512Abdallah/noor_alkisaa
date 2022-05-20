import 'package:flutter/material.dart';
import 'package:noor_alkisaa/gen/assets.gen.dart';
import 'package:noor_alkisaa/helper/sized_config.dart';
import 'package:noor_alkisaa/view/chating.dart';

import '../helper/constance.dart';

class TechnicalSupport extends StatelessWidget {

  String? _name = "مصطفى محمد";

  List questions = [
    "لا استطيع القيام بطباعه الكارتات",
    "اواجه مشكله فى النظام",
    "قومت بطباعه الكارتات بالخطأ",
    "لا استطيع القيام بطباعه الكارتات",
    "اواجه مشكله فى النظام",
    "قومت بطباعه الكارتات بالخطأ"
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("الدعم الفنى"),
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
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(
                SizeConfig.defaultSize! * 1.0,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "مرحبا ",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: "Dubai",
                          color: primaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        " $_name",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: "Dubai",
                          color: primaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "!",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: "Dubai",
                          color: primaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "كيف بامكاننا مساعدتك ؟",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: "Dubai",
                          color: Colors.black87,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.7,
              child: ListView.builder(
                  //itemCount: 6,
                  itemCount: questions.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      padding: EdgeInsets.only(
                        left: SizeConfig.defaultSize! * 0.8,
                        right: SizeConfig.defaultSize! * 0.8,
                      ),
                      child: Column(children: [
                        Container(
                          padding: EdgeInsets.all(
                            SizeConfig.defaultSize! * 0.8,
                          ),
                          margin: EdgeInsets.only(
                            bottom: SizeConfig.defaultSize! * 1.2,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            border: Border.all(
                                color: primaryGreyColor3, width: 1.5),
                            color: Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    //   Assets.images.question1.image(),
                                    Assets.images.question1.image(),
                                    SizedBox(
                                      width: SizeConfig.defaultSize! * 0.8,
                                    ),
                                    Text(
                                      questions[index],
                                      style: TextStyle(
                                        fontFamily: "Dubai",
                                        fontSize: 18,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Chating(
                                              question: questions[index])));
                                },
                                color: primaryColor,
                                icon: Icon(Icons.arrow_back_ios),
                                iconSize: 23,
                              )
                            ],
                          ),
                        )
                      ]),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

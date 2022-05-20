import 'package:flutter/material.dart';
import 'package:noor_alkisaa/helper/sized_config.dart';

import '../helper/constance.dart';

class Chating extends StatelessWidget {
  //const Chating({Key? key}) : super(key: key);

  String question;

  Chating({required this.question});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "الدردشه",
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Dubai",
            fontSize: 18,
          ),
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
      ),
      body: Container(
        padding: EdgeInsets.only(top: SizeConfig.defaultSize! * 2.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(SizeConfig.defaultSize! * 0.8),
              color: Colors.grey[200],
              child: Column(
                children: [
                  Row(children: [
                    Text(
                      "التاريخ والوقت",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 18,
                          fontFamily: "Dubai"),
                    )
                  ]),
                  Row(
                    children: [
                      Text(
                        question,
                        style: TextStyle(
                            color: primaryColor,
                            fontSize: 20,
                            fontFamily: "Dubai",
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(),
          ],
        ),
      ),
    );
  }
}

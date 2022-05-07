
import 'package:flutter/material.dart';

import 'constance.dart';



ThemeData  theme(){



  return ThemeData(


    dividerTheme: DividerThemeData(
      endIndent: 155,
      indent: 155,
      //SizeConfig.defaultSize!*16,
      color: Color(0xff3ED6A8),
      thickness: 3.5,
      space: 30,
    ),

    textTheme: TextTheme(

      bodyText1: TextStyle(
          fontFamily: "Dubai",
          fontStyle: FontStyle.normal,
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: primaryColor),
      headline1: TextStyle(
          fontFamily: "Dubai",
          fontStyle: FontStyle.normal,
          fontSize: 24,
          fontWeight: FontWeight.w700,
          color: primaryColor),
      button: TextStyle(
          fontFamily: "Dubai",
          fontStyle: FontStyle.normal,
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: Colors.white),
      headline2: TextStyle(
          color: primaryGreyColor,
          fontFamily: "Dubai",
          fontSize: 15,
          fontWeight: FontWeight.w500),
      headline3: TextStyle(
          color: primaryColor,
          fontFamily: 'Dubai',
          fontSize: 17,
          fontWeight: FontWeight.normal),

    ),
  );
}







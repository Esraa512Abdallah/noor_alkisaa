import 'package:flutter/material.dart';
import 'package:noor_alkisaa/helper/constance.dart';
import 'package:noor_alkisaa/helper/sized_config.dart';

import 'custom_gradient_button.dart';

class CustomModificationCard extends StatelessWidget {



    final String headText ;
    final Function onPressed ;
    final Widget widget ;

   CustomModificationCard(
       {
         required this.headText ,
         required this.onPressed,
         required this.widget,
       }
       );



  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);



    return Card(
      elevation: 7.0,
      child: Padding(
        padding: EdgeInsets.only(
          left: SizeConfig.defaultSize! * 1.5,
          right: SizeConfig.defaultSize! * 1.5,
          top: SizeConfig.defaultSize! * 1.0,
          bottom: SizeConfig.defaultSize! * 1.0,
        ),
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          headText,
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontFamily: "Dubai"),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        widget
                        // Text(
                        //   inputText,
                        //   style: TextStyle(
                        //       fontSize: 15,
                        //       color: primaryGreyColor,
                        //       fontFamily: "Dubai"),
                        // )
                      ],
                    )
                  ],
                )),
            Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomgradentButton(
                        buttonheight: 35,
                        buttonWidth: 130,
                        onPressed: () {
                          onPressed();
                        },
                        child: Center(
                          child: Text(
                            "طلب تعديل",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ))
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

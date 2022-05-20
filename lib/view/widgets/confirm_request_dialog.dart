
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:noor_alkisaa/helper/sized_config.dart';

class ConfirmRequestDialog extends StatelessWidget {
 // const ConfirmRequestDialog({Key? key}) : super(key: key);

  Widget widget ;
   double dialogHeight;//SizeConfig.defaultSize! * 31

  ConfirmRequestDialog({required this.widget,required this.dialogHeight});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return  Dialog(

      shape: RoundedRectangleBorder(
          borderRadius:
          BorderRadius.circular(
              15.0)),
      //this right here
      child: Container(
        width: MediaQuery.of(context).size.width*0.95,
        // height:dialogHeight,
        padding: EdgeInsets.only(bottom: 8.0),
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Padding(
                    padding:
                    const EdgeInsets
                        .only(
                      top: 5.0,
                      right: 10.0,
                      left: 5.0,
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.cancel,
                        color: Colors
                            .grey[400],
                        size: 32,
                      ),
                      onPressed: () {
                        Navigator.pop(
                            context);
                      },
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment:
                CrossAxisAlignment
                    .center,
                mainAxisAlignment:
                MainAxisAlignment
                    .center,
                children: [
                  Center(
                    child: Stack(
                      children: [
                        Positioned(
                          child: SizedBox(
                            child: Image
                                .asset(
                              "assets/images/Ellipse 2296.png",
                              fit: BoxFit
                                  .fill,
                            ),
                          ),
                        ),
                        Positioned(
                          top: SizeConfig.defaultSize!*3.5,
                          left: SizeConfig.defaultSize!*3.2,
                          child: Image.asset(
                              "assets/images/Path.png"),
                        ),
                      ],
                    ),
                    // Image.asset("assets/images/Ellipse 2296.png"),
                  ),
                ],
              ),
             Container(
               padding: EdgeInsets.only(top:SizeConfig.defaultSize!*1.5,),
               child:widget ,
             ),
            ],
          ),
        ),
      ),
    );
  }
}

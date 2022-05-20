import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:noor_alkisaa/helper/sized_config.dart';

import '../../gen/assets.gen.dart';
import '../../controller/app_local.dart';

class ModificationConfirmDialog extends StatelessWidget {

  String? _name ;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Container(
        padding: EdgeInsets.only(bottom: 10),
        height: SizeConfig.defaultSize! * 35,
        child: Container(
          child: Column(
              children: [

                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 5.0,
                        right: 10.0,
                        left: 5.0,
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.cancel,
                          color: Colors.grey[400],
                          size: 32,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment:
                  CrossAxisAlignment.center,
                  mainAxisAlignment:
                  MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Stack(
                        children: [
                          Positioned(
                            child: SizedBox(
                              child: Assets.images.ellipse2296.image(fit: BoxFit.fill),


                            ),
                          ),
                          Positioned(
                            top: 35,
                            left: 30,
                            child:Assets.images.path.image(),
                          ),
                        ],
                      ),
                      // Image.asset("assets/images/Ellipse 2296.png"),
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeConfig.defaultSize!*1.5,
                ),
                Row(
                  crossAxisAlignment:
                  CrossAxisAlignment.center,
                  mainAxisAlignment:
                  MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Text(
                        AppLocal.of(context).getTranslated("تم ارسال طلب تعديل بياناتك للاداره"),
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: "Dubai",
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                         // overflow: TextOverflow.values.
                        ),
                      ),
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
                      AppLocal.of(context).getTranslated("و سيتم التواصل معك"),
                      style: TextStyle(
                          fontSize: 17,
                          fontFamily: "Dubai",
                          color: Colors.grey,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}

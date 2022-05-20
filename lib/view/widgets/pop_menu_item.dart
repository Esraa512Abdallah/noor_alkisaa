import 'package:flutter/material.dart';
import 'package:noor_alkisaa/helper/constance.dart';
import 'package:noor_alkisaa/helper/sized_config.dart';

import 'custom_checkbox_tile.dart';

class CustomPopUpMenuItme extends StatelessWidget {

  String title ;

   CustomPopUpMenuItme({Key? key , required this.title}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return PopupMenuButton(
      elevation: 10,
      // color: Colors.teal[200],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Icon(
        Icons.arrow_drop_down,
        size: 35,
        color: primaryGreenColor,
      ),
      itemBuilder: (context) => [

        PopupMenuItem(

          padding: EdgeInsets.only(
            bottom: SizeConfig.defaultSize! * 1.2,
            right: SizeConfig.defaultSize! * 1.2,
            left: SizeConfig.defaultSize! * 1.2,
          ),

          value: 2,
          child: Container(
            padding: EdgeInsets.only(
              bottom: SizeConfig.defaultSize! * 0.8,
            ),
            width: SizeConfig.defaultSize! * 27,
            height: SizeConfig.defaultSize! * 5.7,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey.shade400, width: 1.5),
            ),
            child: CustomCheckBoxTile(
              title: 'بابل',
            ),
          ),
        ),
        PopupMenuItem(
          value: 2,

          padding: EdgeInsets.only(
            bottom: SizeConfig.defaultSize! * 1.2,
            right: SizeConfig.defaultSize! * 1.2,
            left: SizeConfig.defaultSize! * 1.2,
          ),

          child: Container(
            padding: EdgeInsets.only(
              bottom: SizeConfig.defaultSize! * 0.8,
            ),
            width: SizeConfig.defaultSize! * 27,
            height: SizeConfig.defaultSize! * 5.7,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey.shade400, width: 1.5),
            ),
            child: CustomCheckBoxTile(
              title: title,
            ),
          ),
        ),
      ],
    );
  }
}

/*

  PopupMenuItem(
            value: 1,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
              child: Row(
                children: [
                  // FaIcon(
                  //   FontAwesomeIcons.lightEdit,
                  //   color: Colors.white,
                  //   size: 20,
                  // ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                    child: Text(
                      'Type Text',
                    ),
                  ),
                ],
              ),
            )),
        PopupMenuItem(
            value: 2,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                      child: Text(
                        ' Record Voice',
                      )),
                ],
              ),
            )),
        PopupMenuItem(
          value: 3,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
            child: Row(
              children: [
                //  FaIcon(FontAwesomeIcons.lightCamera, color: Colors.white, size: 20),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Text(
                    ' Take a Picture',
                  ),
                ),
              ],
            ),
          ),
        ),
        PopupMenuItem(
            value: 4,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
              child: Row(
                children: [
                  // FaIcon(FontAwesomeIcons.lightVideo, color: Colors.white, size: 20),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Text(
                      ' Record a Video',
                    ),
                  ),
                ],
              ),
            ))
*/

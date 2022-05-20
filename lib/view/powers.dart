// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:noor_alkisaa/helper/constance.dart';
// import 'package:noor_alkisaa/helper/sized_config.dart';
// import 'package:noor_alkisaa/controller/app_local.dart';
//
// class Powers extends StatefulWidget {
//   @override
//   State<Powers> createState() => _PowersState();
// }
//
// class _PowersState extends State<Powers> {
//
//   bool _value = false;
//
//   Map<String, bool> values = {
//     'تحويل رصيد': false,
//     'طلب رصيد': false,
//   };
//
//   @override
//   Widget build(BuildContext context) {
//     SizeConfig().init(context);
//
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text(
//           AppLocal.of(context).getTranslated("صلاحيات"),
//         ),
//         flexibleSpace: Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               begin: Alignment.bottomCenter,
//               end: Alignment.topCenter,
//               colors: [
//                 groundColor1,
//                 groundColor2,
//                 groundColor3,
//                 groundColor4,
//               ],
//             ),
//           ),
//         ),
//         elevation: 0.0,
//         leading: IconButton(
//           icon: Icon(
//             Icons.arrow_back,
//             color: Colors.white,
//             size: 30,
//           ),
//           onPressed: () {
//             Navigator.pop(context);
//             // do something
//           },
//         ),
//         actions: <Widget>[
//           GestureDetector(
//             child: Image.asset("assets/images/question.png"),
//             onTap: () {
//               Navigator.pushNamed(context, "TechnicalSupport");
//             },
//           ),
//         ],
//       ),
//
//       //   body:
//       body: ListView(
//         children: values.keys.map((String key) {
//           return Container(
//             margin: EdgeInsets.only(
//               top: SizeConfig.defaultSize! * 1.5,
//               right: SizeConfig.defaultSize!*1.5,
//               left: SizeConfig.defaultSize!*1.5,
//             ),
//             decoration: BoxDecoration(
//
//               borderRadius: BorderRadius.circular(5),
//               border: Border.all(color: primaryGreyColor2, width: 1.5),
//               color: Colors.white,
//             ),
//             child: CheckboxListTile(
//
//               selectedTileColor: primaryColor,
//               checkboxShape: CircleBorder(),
//               checkColor: primaryColor,
//               activeColor: Colors.white,
//               side: BorderSide(
//                 color: primaryGreyColor,
//               ),
//               title: Text(key),
//               value: values[key],
//               onChanged: (bool? value) {
//                 setState(() {
//                   values[key] = value!;
//                 });
//               },
//             ),
//           );
//         }).toList(),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:noor_alkisaa/helper/constance.dart';
import 'package:noor_alkisaa/helper/sized_config.dart';
import 'package:noor_alkisaa/view/widgets/custom_checkbox_tile.dart';
import 'package:noor_alkisaa/controller/app_local.dart';

class Powers extends StatefulWidget {
  @override
  State<Powers> createState() => _PowersState();
}

class _PowersState extends State<Powers> {
  bool _value = false;

  final List<String> values = [
    'تحويل رصيد',
    'طلب رصيد',
  ];

  List<String> selectedValues = [];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppLocal.of(context).getTranslated("صلاحيات"),
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

      //   body:
      body: ListView.builder(
        itemCount: values.length,
        itemBuilder: ((context, index) {
          String title = values[index];
          return Container(
            margin: EdgeInsets.only(
              top: SizeConfig.defaultSize! * 1.5,
              right: SizeConfig.defaultSize! * 1.5,
              left: SizeConfig.defaultSize! * 1.5,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: primaryGreyColor2, width: 1.5),
              color: Colors.white,
            ),
            child: CustomCheckBoxTile(
              title: title,
              onChanged: (value) {
                if (value) {
                  values.add(title);
                } else {
                  values.remove(title);
                }
              },
            ),
          );
        }),
      ),
    );
  }
}

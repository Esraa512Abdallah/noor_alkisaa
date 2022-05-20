import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:noor_alkisaa/helper/sized_config.dart';
import 'package:noor_alkisaa/view/widgets/labeled_field.dart';

import 'custom_gradient_button.dart';
import 'modification_confirm_dialog.dart';

class ModificationFieldDialog extends StatelessWidget {



  String? _name ;
  String? labelText ;
  String? hintText ;
  String? buttonText ;
  Widget suffixWidget ;

  ModificationFieldDialog(
  {
    this.hintText ,
    this.labelText ,
    this.buttonText ,
    required this.suffixWidget,
  }
      );






  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Dialog(

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Container(
        padding: EdgeInsets.only(bottom: 10),
        height: SizeConfig.defaultSize! * 25,
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
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text(
                   "Edit request",
                   style: TextStyle(
                     fontSize: 18,
                     color: Colors.black,
                     fontFamily: "Dubai",
                   ),
                 ),
               ],
             ),
             SizedBox(
               height:SizeConfig.defaultSize! * 2,
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Container(
                   height: SizeConfig.defaultSize!*6,
                   width: SizeConfig.defaultSize!*30,
                   child: CustomTextFieldWithLabel(
                       suffixWidget: suffixWidget ,
                       labelText: labelText! ,//"الاسم",
                       obscureText: false,
                       onSaved: (val) {
                         _name = val ;
                       },
                       keyboardType: TextInputType.text,
                       hintText: hintText! ,//"خالد محمد"
                   ),
                 )
               ],
             ),
                SizedBox(
                  height:SizeConfig.defaultSize! * 1.5,
                ),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 CustomgradentButton(
                   child:Text(buttonText!) ,
                   onPressed: (){

                     Navigator.pop(context);
                     showDialog(
                         context: context,
                         builder: (BuildContext context) => (
                     ModificationConfirmDialog()
                     ));
                   },
                   buttonheight: SizeConfig.defaultSize! * 5,
                   buttonWidth: SizeConfig.defaultSize! * 30,
                   borderRadius: 10,
                   borderColor: null,
                   alignment: Alignment.center,

                 ),
               ],
             ),
          ]),
        ),
      ),
    );
  }
}

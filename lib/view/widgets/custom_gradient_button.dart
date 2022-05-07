import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:noor_alkisaa/helper/constance.dart';
import 'package:noor_alkisaa/helper/sized_config.dart';

class CustomgradentButton extends StatelessWidget {
  //final Color color;
  final Alignment alignment;
  //final double fontsize;
 // final String text;
  final Function onPressed;
  final Widget child;

  final Color? borderColor;
  final double? buttonheight ;
  final double? buttonWidth ;
  final double? borderRadius ;

  CustomgradentButton({
    required this.buttonheight,
    required this.buttonWidth,
  //  required this.color,
    this.alignment = Alignment.center,
    //this.fontsize = 18,
    //this.text = ' ',
    this.borderColor,
    required this.onPressed,
    required this.child,
    this.borderRadius
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: (buttonWidth !=null)? buttonWidth! : SizeConfig.screenWidth!,
      height: (buttonheight !=null)? buttonheight! : null,

      decoration: BoxDecoration(

        gradient:LinearGradient(

          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
          colors: [
            groundColor1,
            groundColor2,
            groundColor3,
            groundColor4,
          ],
        ),
       borderRadius: BorderRadius.circular(15.0),

      ),

      child: FlatButton(



        onPressed: () {
          onPressed();
        },

        padding: EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: BorderSide(
            width: 1.3,
            color: (borderColor != null) ? borderColor! : Colors.transparent,
          ),
        ),
        child: child,
        minWidth:buttonWidth ,



      ),
    );
  }
}

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color color;
  final Alignment alignment;
  //final double fontsize;
  final String text;
  final Function onPressed;
  final Widget child;
  final double borderRadius;

  final Color? borderColor;
  final double? buttonHeight ;
  final double buttonWidth ;

  CustomButton({
    required this.buttonHeight,
    required this.buttonWidth ,
    required this.color,
    this.alignment = Alignment.center,
    this.text = ' ',
    this.borderColor,
    required this.onPressed,
    required this.child,
    required this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        child: Container(
          width: (buttonWidth !=null)? buttonWidth : null ,
        height: (buttonHeight !=null)? buttonHeight! : null,
        child: FlatButton(



          onPressed: () {
            onPressed();
          },


          color: color,
          padding: EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            side: BorderSide(
              width: 1.3,
              color: (borderColor != null) ? borderColor! : Colors.transparent,
            ),
          ),
          child: child,
        ),
    ));
  }
}

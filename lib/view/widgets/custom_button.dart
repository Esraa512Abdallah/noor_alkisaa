import 'package:flutter/cupertino.dart';
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
  final double? buttonheight ;

  CustomButton({
    required this.buttonheight,
    required this.color,
    this.alignment = Alignment.center,
   // this.fontsize = 18,
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
          width: MediaQuery.of(context).size.width,
        height: (buttonheight !=null)? buttonheight! : null,
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

import 'package:dr_scan_graduation_project/constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.onTap,
      required this.text,
      required this.size,
      required this.width,
      required this.height,
      required this.color,
      required this.borderRadius,
      this.fontweight,
      required this.textColor,
     required this.borderColor});
  String text;
  VoidCallback? onTap;
  double size;
  double width;
  double height;
  Color color;
  double borderRadius;
  var fontweight;
  Color textColor;
  Color borderColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(

        width: width,
        height: height,
        decoration: BoxDecoration(
          border: Border.all(
            color: borderColor,
            width: 2,
          ),
          color: color,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Center(
          child: DefaultTextStyle(
            style: TextStyle(
                color: textColor,
                fontFamily: kRoboto,
                fontSize: size,
                fontWeight: fontweight),
            child: Text(text),
          ),
        ),
      ),
    );
  }
}

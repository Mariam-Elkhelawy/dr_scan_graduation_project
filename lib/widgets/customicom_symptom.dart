import 'package:dr_scan_graduation_project/constants.dart';
import 'package:flutter/material.dart';

class CustomIconSymptom extends StatelessWidget {
  CustomIconSymptom(
      {required this.icon,
      required this.iconText,
      required this.width,
      required this.height,
      required this.radius,
      required this.textcolor,
        this.fontWeight,
      required this.borderColor,
      required this.iconcolor,
      required this.iconsize,
        this.onTap,
        required this.offset,
        required this.blurRadius,
        required this.shadowColor,
        required this.spreadRadius
      });
  Widget icon;
  String iconText;
  double width;
  double height;
  double radius;
  Color textcolor;
  var fontWeight;
  Color borderColor;
  Color iconcolor;
  double iconsize;
  VoidCallback? onTap;
  Offset offset;
  double blurRadius;
  Color shadowColor;
  double spreadRadius;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: width,
          height: height,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15,),
                child: IconButton(
                   onPressed: () { onTap; }, icon:icon,color: iconcolor,iconSize: iconsize,

                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  iconText,
                  style: TextStyle(
                      fontSize: 17,
                      fontFamily: kRoboto,
                      fontWeight: fontWeight,
                      color: textcolor),
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: kWhiteColor.withOpacity(.8),

            border: Border.all(
              color: borderColor,
              width: 2,
            ),

            boxShadow: [
              BoxShadow(
                color: shadowColor,
                blurRadius: blurRadius,
                offset: offset,
                spreadRadius: spreadRadius,
              )
            ],

            borderRadius: BorderRadius.circular(radius),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:dr_scan_graduation_project/constants.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {this.hintText,
      this.onChanged,
      required this.suffixIcon,
      required this.abovetext,
      required this.width,
      required this.padding,this.color});
  String? hintText;
  Widget suffixIcon;
  Function(String)? onChanged;
  String abovetext;
  double width;
  double padding;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:  EdgeInsets.only(right: padding),
          child: Text(
            abovetext,
            style: TextStyle(fontFamily: kRoboto, fontSize: 14,fontWeight: FontWeight.w400),
          ),
        ),
        SizedBox(
          height: 6,
        ),
        SizedBox(
          width: width,
          child: TextFormField(

            cursorColor: Color(0xff5F5F5F),

            validator: (data) {
              if (data!.isEmpty) {
                return 'field is required';
              }
            },
            onChanged: onChanged,
            decoration: InputDecoration(
              filled: true,
              fillColor: color,
              hintText: hintText,
              hintStyle: TextStyle(color: kGreyColor),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: suffixIcon,
              ),
              focusedBorder: OutlineInputBorder(

                borderSide: BorderSide(
                  color: Color(0xffD8DADC),
                ),
                borderRadius: BorderRadius.circular(10),
              ),

              enabledBorder: OutlineInputBorder(

                borderSide: BorderSide(
                  color: Color(0xffD8DADC),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),

        ),
      ],
    );
  }
}

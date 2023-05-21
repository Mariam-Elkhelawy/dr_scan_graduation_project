import 'package:dr_scan_graduation_project/constants.dart';
import 'package:flutter/material.dart';

class CustomIconText extends StatelessWidget {
  CustomIconText({required this.icon, required this.iconText});
  Widget icon;
  String iconText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Container(
            width: 320,
            height: 45,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: IconButton(
                    onPressed: () {},
                    icon: icon,
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Text(
                    iconText,
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: kRoboto,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(.5),
                  blurRadius: 13,
                  offset: Offset(0,1),
                )
              ],
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../constants.dart';

class HomePageButton extends StatelessWidget {
  HomePageButton({required this.image, required this.iconText,required this.onTap});
  String image;
  String iconText;
  VoidCallback onTap;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 25 ,right: 16),
          child: GestureDetector(
            onTap: onTap,

            child: Container(
              width: 342,
              height: 52,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 78),
                    child: Image.asset(image)
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    iconText,
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: kRoboto,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff333333)),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(.5),
                    blurRadius: 13,
                    offset: Offset(0, 1),
                  )
                ],
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
import 'package:flutter/material.dart';

Widget searchPageContainer({String imagePath, String title}) {
  return Container(
    height: 100,
    width: 120,
    margin: EdgeInsets.symmetric(horizontal:10),
    padding: EdgeInsets.only(top: 14, right: 36, left: 36, bottom: 12),
    decoration: BoxDecoration(
      color: Color(0xff979797).withOpacity(0.5),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      children: [
        Image.asset(imagePath),
        SizedBox(height: 10),
        Text(
          title,
          style: TextStyle(
              color: Color(0xff2F69F8),
              fontSize: 12,
              fontWeight: FontWeight.w700),
        ),
      ],
    ),
  );
}

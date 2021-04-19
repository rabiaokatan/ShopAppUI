import 'package:flutter/material.dart';
import 'package:shop_ui/widgets/divider.dart';

Widget headerWidget({String text, bool isHomePage = false}) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(right: 20, left: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               isHomePage ? Row(
                  children: [
                    Text(
                      'product available: ',
                      style: TextStyle(color: Color(0xFF707070), fontSize: 10),
                    ),
                    Text(
                      '1364',
                      style: TextStyle(color: Color(0xff2F69F8), fontSize: 10),
                    ),
                  ],
                ) : Text(''),
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            //icon
            Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Color(0xffFFB701),
                borderRadius: BorderRadius.circular(35),
              ),
              alignment: Alignment.center,
              child: Icon(
                Icons.person_outline,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      //divider
      divider(),
    ],
  );
}

import 'package:flutter/material.dart';
import 'package:shop_ui/screens/checkout.dart';

Widget footer({BuildContext context, double totalPrice, bool isCartPage}) {
  return Padding(
    padding: const EdgeInsets.only(right: 20, left: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                text: 'Total Price ',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.black),
                children: <TextSpan>[
                 !isCartPage ? TextSpan(
                    text: '\$' + totalPrice.toString(),
                    style: TextStyle(color: Colors.blue),
                  ): TextSpan(),
                ],
              ),
            ),
            // Text('Total Price',
            //     style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700)),
            Text(
              'VAT Included',
              style: TextStyle(
                fontSize: 12,
                color: Color(0xff6a6a6a),
              ),
            ),
          ],
        ),
        GestureDetector(
          onTap: () {
            isCartPage
                ? Navigator.push(context,
                    MaterialPageRoute(builder: (_) => Checkout(totalPrice)))
                : (_) {};
          },
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xff2F69F8),
              borderRadius: BorderRadius.circular(15),
            ),
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
              child: Text(
                isCartPage ? '\$ ' + totalPrice.toString() : 'Next',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

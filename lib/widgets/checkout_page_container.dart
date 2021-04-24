import 'package:flutter/material.dart';

Widget checkoutPageContainer({bool isFree}) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.grey[300].withOpacity(0.5),
      borderRadius: BorderRadius.circular(10),
      border: Border.all(
        color: isFree ? Colors.orange : Colors.transparent,
      ),
    ),
    alignment: Alignment.center,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          isFree
              ? 'assets/images/ic-cart-track_1.png'
              : 'assets/images/ic-cart-track_2.png',
          width: 60,
          height: 60,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            isFree
                ? Text('Free Shipment')
                : RichText(
                    text: TextSpan(
                      text: 'Get ',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'premium ',
                          style: TextStyle(color: Colors.blue),
                        ),
                        TextSpan(
                          text: 'shipment',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
            SizedBox(height: 5),
            isFree
                ? Text(
                    'Free shipment over \$100',
                    style: TextStyle(
                      color: Colors.grey[400],
                    ),
                  )
                : RichText(
                    text: TextSpan(
                      text: 'Deliver time ',
                      style: TextStyle(
                        color: Colors.grey[400],
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: '24h',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
            isFree
                ? Text(
                    'Deliver time 2-3 days',
                    style: TextStyle(
                      color: Colors.grey[400],
                    ),
                  )
                : Text(''),
          ],
        ),
        Text(
          isFree ? '\$0' : '\$30',
          style: TextStyle(color: Colors.blue),
        ),
      ],
    ),
  );
}

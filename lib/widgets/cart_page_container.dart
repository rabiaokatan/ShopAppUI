import 'package:flutter/material.dart';

Widget cartPageContainer({String title, String brand, String photoUrl,
    String size, int quantity, Color color, double cost}) {
  return Padding(
    padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                photoUrl,
                width: 100,
                height: 104,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 15),
                Text(
                  brand,
                  style: TextStyle(fontSize: 12, color: Color(0xff6A6A6A)),
                ),
                Text(
                  'Size: ' + size,
                  style: TextStyle(fontSize: 12, color: Color(0xff6A6A6A)),
                ),
                Row(
                  children: [
                    Text(
                      'Color: ',
                      style: TextStyle(fontSize: 12, color: Color(0xff6A6A6A)),
                    ),
                    SizedBox(width: 2),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.circular(35),
                      ),
                    )
                  ],
                ),
                Text(
                  'Quantity: ' + (quantity).toString(),
                  style: TextStyle(fontSize: 12, color: Color(0xff6A6A6A)),
                ),
              ],
            ),
          ],
        ),
        Text('\$ '+ cost.toString(), style: TextStyle(fontSize: 12, color:Color(0xff2F69F8))),
      ],
    ),
  );
}

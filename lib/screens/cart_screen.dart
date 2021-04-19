import 'package:flutter/material.dart';
import 'package:shop_ui/widgets/header_widget.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //header
              headerWidget(text: 'Cart'),

              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                height: 80,
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffD9D9D9).withOpacity(0.5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        color: Color(0xffFFB701).withOpacity(0.5),
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.card_giftcard, //gift_icon.png gelecek buraya
                        color: Color(0xff2f69f8),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '-10%',
                            style: TextStyle(
                                color: Color(0xff2f69f8),
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                          Expanded(
                              child: Text(
                            'Enjoy Student Discount',
                            style: TextStyle(
                              color: Color(0xff6A6A6A),
                              fontSize: 12,
                            ),
                            overflow: TextOverflow.fade,
                          ))
                        ],
                      ),
                    ),
                    Text(
                      'GIVE A GIFT',
                      style: TextStyle(
                        color: Color(0xff2f69f8),
                        fontSize: 8,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}

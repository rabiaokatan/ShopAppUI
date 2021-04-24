import 'package:flutter/material.dart';
import 'package:shop_ui/widgets/checkout_page_container.dart';
import 'package:shop_ui/widgets/divider.dart';
import 'package:shop_ui/widgets/footer.dart';
import 'package:shop_ui/widgets/header_widget.dart';

class Checkout extends StatefulWidget {

  double totalPrice;

  Checkout(this.totalPrice);
  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                headerWidget(text: 'Checkout'),

                SizedBox(height: 50),
                //
                //
                ////
                //middle field
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Delivery Adress',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                ),
                divider(),

                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Gauthier Drewitt',
                              style: TextStyle(fontSize: 14)),
                          SizedBox(height: 6),
                          Text('7303 W Alexander Rd',
                              style: TextStyle(fontSize: 14)),
                          SizedBox(height: 6),
                          Text('Las Vegas, NV89129',
                              style: TextStyle(fontSize: 14)),
                          SizedBox(height: 6),
                          Text('USA', style: TextStyle(fontSize: 14)),
                          SizedBox(height: 6),
                        ],
                      ),
                      IconButton(
                        icon: Icon(Icons.radio_button_checked_outlined,
                            color: Colors.orange[200]),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),

                divider(),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('New Adress',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 20)),
                      IconButton(
                        icon: Icon(Icons.radio_button_off_outlined,
                            color: Colors.grey[400]),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20),

               checkoutPageContainer(isFree:true),
               checkoutPageContainer(isFree:false),


               //
               divider(),
               footer(context:context, totalPrice: widget.totalPrice, isCartPage: false),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

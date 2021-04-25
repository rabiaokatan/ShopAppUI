import 'package:flutter/material.dart';
import 'package:shop_ui/models/product.dart';
import 'package:shop_ui/screens/checkout.dart';
import 'package:shop_ui/widgets/cart_page_container.dart';
import 'package:shop_ui/widgets/divider.dart';
import 'package:shop_ui/widgets/footer.dart';
import 'package:shop_ui/widgets/header_widget.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  double totalPrice = 0;

  total() {
    shop.forEach((element) {
      totalPrice = totalPrice + element.cost;
    });
  }

  @override
  void initState() {
    total();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //header
              headerWidget(text: 'Cart'),
              //gift field
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
                    Image.asset('assets/images/gift_icon.png'),
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

              //middle field
              ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: shop.length,
                  itemBuilder: (context, index) {
                    Product item = shop[index];
                    return Dismissible(
                      key: Key(item.id.toString()),
                      background: Container(
                          color: Colors.red,
                          alignment: AlignmentDirectional.centerEnd,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Icon(
                              Icons.delete_forever,
                              color: Colors.white,
                              size: 30,
                            ),
                          )),
                      onDismissed: (direction) {
                        setState(() {
                          shop.removeAt(index);
                          totalPrice -= item.cost;
                        });
                      },
                      child: cartPageContainer(
                        title: item.title,
                        brand: item.brand,
                        photoUrl: item.photoUrl,
                        size: item.size,
                        quantity: item.quantity,
                        color: item.color,
                        cost: item.cost,
                      ),
                    );
                  }),

              SizedBox(height: 50),
              divider(),
              footer(context: context,totalPrice: totalPrice, isCartPage: true ),
            ],
          ),
        ),
      )),
    );
  }
}

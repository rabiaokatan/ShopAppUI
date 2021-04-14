import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shop_ui/models/product.dart';
import 'package:shop_ui/screens/product_detail_page.dart';

class MiddleFieldCard extends StatefulWidget {
  @override
  _MiddleFieldCardState createState() => _MiddleFieldCardState();
}

class _MiddleFieldCardState extends State<MiddleFieldCard> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 490,
        initialPage: 0,
        autoPlay: true,
        autoPlayAnimationDuration: Duration(seconds: 2),
        onPageChanged: (index, reason) {
          setState(() {
            _current = index;
          });
        },
      ),
      items: products.map((product) {
        return Builder(
          builder: (BuildContext context) {
            return GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailPage(product: product),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 375,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          height: 355,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              product.photoUrl,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 34, top: 14),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Icon(Icons.favorite_border,
                                color: Colors.black),
                          ),
                        ),
                        //shopping icon
                        Positioned(
                          top: 320,
                          right: 14,
                          child: Container(
                            margin: EdgeInsets.only(right: 34, bottom: 5),
                            padding: EdgeInsets.all(6),
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Color(0xff2F69F8),
                              borderRadius: BorderRadius.circular(35),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 3,
                                  blurRadius: 5,
                                ),
                              ],
                            ),
                            alignment: Alignment.center,
                            child:
                                Icon(Icons.shopping_bag, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    // middle field footer
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                      decoration: BoxDecoration(
                        color: Color(0xff7750EA),
                        borderRadius: BorderRadius.circular(2),
                      ),
                      child: Text(
                        'NEW',
                        style: TextStyle(fontSize: 8, color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.only(right: 20, left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              product.title,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            '\$' + product.cost.toString(),
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20, left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            product.subTitle,
                            style: TextStyle(
                                color: Color(0xff6A6A6A), fontSize: 12),
                          ),
                          SizedBox(width: 5),
                          Text(
                            'VAT included',
                            style: TextStyle(
                                color: Color(0xff6A6A6A), fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: products.map((url) {
                        int index = products.indexOf(url);
                        return Container(
                          width: 8.0,
                          height: 8.0,
                          margin: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 2.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _current == index
                                ? Color.fromRGBO(0, 0, 0, 0.9)
                                : Color.fromRGBO(0, 0, 0, 0.4),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}

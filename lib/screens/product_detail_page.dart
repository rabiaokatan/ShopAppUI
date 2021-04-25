import 'package:flutter/material.dart';
import 'package:shop_ui/models/product.dart';
import 'package:shop_ui/widgets/divider.dart';
import 'package:shop_ui/widgets/product_card.dart';

class ProductDetailPage extends StatefulWidget {
  Product product;
  ProductDetailPage({this.product});
  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 375,
                      ),
                      Container(
                        // margin: EdgeInsets.symmetric(horizontal: 10),
                        height: 355,
                        width: double.infinity,
                        child: Image.network(
                          widget.product.photoUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 34, top: 34),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: GestureDetector(
                            onTap: () => Navigator.pop(context),
                            child: Container(
                              height: 28,
                              width: 28,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35),
                                color: Colors.black.withOpacity(0.4),
                              ),
                              alignment: Alignment.center,
                              child: Icon(Icons.close_rounded,
                                  color: Colors.white),
                            ),
                          ),
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
                                color: Colors.blue[900].withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 5,
                              ),
                            ],
                          ),
                          alignment: Alignment.center,
                          child: IconButton(
                            icon: Icon(Icons.shopping_bag, color: Colors.white),
                            onPressed: () {
                             shop.add(widget.product); 
                            },
                          ),
                        ),
                      ),

                      Positioned(
                        top: 300,
                        left: 20,
                        child: IconButton(
                            icon: Icon(Icons.favorite_border),
                            onPressed: () {}),
                      ),
                    ],
                  ),
                  // middle field footer
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                    decoration: BoxDecoration(
                      color: Color(0xffEA8250),
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: Text(
                      'GOOD PRICE',
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
                            widget.product.title,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          '\$' + widget.product.cost.toString(),
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
                          widget.product.subTitle,
                          style:
                              TextStyle(color: Color(0xff6A6A6A), fontSize: 12),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'VAT included',
                          style:
                              TextStyle(color: Color(0xff6A6A6A), fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 35),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/fabric.png',
                      height: 26,
                      width: 26,
                    ),
                    SizedBox(width: 10),
                    Text(
                      '100% Cotton',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
              divider(),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: Row(
                  children: [
                    Icon(Icons.thumb_up),
                    SizedBox(width: 10),
                    Text(
                      '4.5/5',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
              divider(),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: Text(
                  '',
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'More from Wrangler',
                      style: TextStyle(fontSize: 20),
                    )),
              ),
              SizedBox(height: 15),
              SizedBox(
                height: 220.0,
                child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: youMayLikeProducts.length,
                  itemBuilder: (BuildContext context, int index) =>
                      youMayLikeProducts[index].id != widget.product.id
                          ? ProductCard(
                            product: widget.product,
                              title: youMayLikeProducts[index].title,
                              subTitle: youMayLikeProducts[index].subTitle,
                              url: youMayLikeProducts[index].photoUrl,
                            )
                          : Container(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

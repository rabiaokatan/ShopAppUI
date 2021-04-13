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
    var product;
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
                          child:
                              Icon(Icons.favorite_border, color: Colors.black),
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
                          child: Icon(Icons.shopping_bag, color: Colors.white),
                        ),
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
              Row(
                children: [
                  Image.network(
                    'https://lh3.googleusercontent.com/proxy/uRjxZ1jfCoVxyM-ezvLdr7BLw9ppJUUgJM40rSmsQylomvBR1PVvXhQz0neZjdLxAITMpKycxgQMjzKrDD8uLIVOrhH8CQdFOhk9Ng',
                    width: 26,
                    height: 26,
                  ),
                  SizedBox(width: 10),
                  Text(
                    '100% Cotton',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
              divider(),
              Row(
                children: [
                  Icon(Icons.thumb_up),
                  SizedBox(width: 10),
                  Text(
                    '4.5/5',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
              divider(),
              Text(
                  'ksdksdklsdladsl aksdkasdk kandslkasld kansdkasd naldjloasd'),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child:
                    Text('More from Wrangler', style: TextStyle(fontSize: 20)),
              ),
              SizedBox(height: 15),
              SizedBox(
                height: 220.0,
                child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: youMayLikeProducts.length,
                  itemBuilder: (BuildContext context, int index) => ProductCard(
                      title: youMayLikeProducts[index].title,
                      subTitle: youMayLikeProducts[index].subTitle,
                      url: youMayLikeProducts[index].photoUrl),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

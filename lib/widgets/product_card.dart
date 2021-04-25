import 'package:flutter/material.dart';
import 'package:shop_ui/models/product.dart';
import 'package:shop_ui/screens/product_detail_page.dart';

class ProductCard extends StatefulWidget {
  String title;
  String subTitle;
  String url;
  Product product;

  ProductCard({this.title, this.subTitle, this.url, this.product});
  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: GestureDetector(
        onTap: (){
           Navigator.push(context, MaterialPageRoute(builder: (_)=>ProductDetailPage(product:widget.product),),);
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //photo field
            Stack(
              children: [
                Container(
                  height: 165,
                  width: 130,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(35),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      widget.product.photoUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                    top: 4,
                    right: 4,
                    child: IconButton(
                      icon: Icon(Icons.favorite_border, color: Colors.black),
                      onPressed: () {},
                    )),
              ],
            ),

            //description field
            SizedBox(height: 10),
            Container(
              width: 130,
              child: Text(
                widget.product.title,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Container(
              width: 130,
              child: Text(
                widget.product.subTitle,
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff6a6a6a),
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

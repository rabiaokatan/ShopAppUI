import 'package:flutter/material.dart';
import 'package:shop_ui/models/product.dart';
import 'package:shop_ui/screens/cart_screen.dart';
import 'package:shop_ui/screens/product_detail_page.dart';
import 'package:shop_ui/widgets/divider.dart';
import 'package:shop_ui/widgets/header_widget.dart';
import 'package:shop_ui/widgets/middle_field_card.dart';
import 'package:shop_ui/widgets/product_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //header
                headerWidget(text: 'New Collection', isHomePage: true),

                //middle field
                MiddleFieldCard(),

                //
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text('You may like', style: TextStyle(fontSize: 20)),
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
                        ProductCard(
                          product:youMayLikeProducts[index] ,
                            title: youMayLikeProducts[index].title,
                            subTitle: youMayLikeProducts[index].subTitle,
                            url: youMayLikeProducts[index].photoUrl),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),   
    );
  }
}

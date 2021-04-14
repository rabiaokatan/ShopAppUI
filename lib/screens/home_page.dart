import 'package:flutter/material.dart';
import 'package:shop_ui/models/product.dart';
import 'package:shop_ui/screens/product_detail_page.dart';
import 'package:shop_ui/widgets/divider.dart';
import 'package:shop_ui/widgets/middle_field_card.dart';
import 'package:shop_ui/widgets/product_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'product available: ',
                                style: TextStyle(
                                    color: Color(0xFF707070), fontSize: 10),
                              ),
                              Text(
                                '1364',
                                style: TextStyle(
                                    color: Color(0xff2F69F8), fontSize: 10),
                              ),
                            ],
                          ),
                          Text(
                            'New collection',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      //icon
                      Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Color(0xffFFB701),
                          borderRadius: BorderRadius.circular(35),
                        ),
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.person_outline,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                //divider
                divider(),
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
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.white),
        child: BottomNavigationBar(
          elevation: 0.0,
          currentIndex: 0,
          //onTap:(){},
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.white,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Color(0xffD8D8D8),
              ),
              title: Text(
                '',
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border,
                color: Color(0xffD8D8D8),
              ),
              title: Text(
                '',
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag,
                color: Color(0xffD8D8D8),
              ),
              title: Text(
                '',
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Color(0xffD8D8D8),
              ),
              title: Text(
                '',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _current = 0;
  List imgList = [
    'https://images.stockx.com/images/Anti-Social-Social-Club-Kkoch-Hoodie-Black.jpg?fit=fill&bg=FFFFFF&w=300&h=214&auto=format,compress&q=90&dpr=2&trim=color&updated_at=1611841873',
    'http://www.bambistore.com.tr/Uploads/UrunResimleri/buyuk/beyazsiyah-kadin-sneakers-l0512438309-e2fe.jpg',
    'https://cdn-images.farfetch-contents.com/15/60/02/30/15600230_29200357_300.jpg',
    'https://ae01.alicdn.com/kf/HTB1wq10RkPoK1RjSZKbq6x1IXXaJ/Bahar-fener-kollu-i-ek-nak-rg-kazak-h-rka-sonbahar-tiki-tarz-Mori-k-z.jpg_q50.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 20, /*eft: 20*/
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //header
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
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
                Container(
                  margin:
                      EdgeInsets.only(top: 20, bottom: 20, right: 20, left: 20),
                  height: 2,
                  width: double.infinity,
                  color: Colors.grey[350],
                ),
                //middle field
                CarouselSlider(
                  options: CarouselOptions(
                    height:490,
                    initialPage: 0,
                    autoPlay: true,
                    autoPlayAnimationDuration: Duration(seconds: 2),
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    },
                  ),
                  items: imgList.map((imgUrl) {
                    return Builder(
                      builder: (BuildContext context) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    height:375,
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 10),
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
                                        imgUrl,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 34, top: 14),
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: Icon(Icons.favorite_border,
                                          color: Colors.black),
                                    ),
                                  ),
                                  //shopping icon
                                  Positioned(
                                    top:320,
                                    right:14,
                                    child: Container(
                                      margin:
                                          EdgeInsets.only(right: 34, bottom: 5),
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
                                      child: Icon(Icons.shopping_bag,
                                          color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                              // middle field footer
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 1),
                                decoration: BoxDecoration(
                                  color: Color(0xff7750EA),
                                  borderRadius: BorderRadius.circular(2),
                                ),
                                child: Text(
                                  'NEW',
                                  style: TextStyle(
                                      fontSize: 8, color: Colors.white),
                                ),
                              ),
                              SizedBox(height:5),
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 20, left: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'Anti Social Club Hoodie',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    SizedBox(width:5),
                                    Text(
                                      '\$60',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 20, left: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Long 3/4 sleevs, sweartshirt',
                                      style: TextStyle(
                                          color: Color(0xff6A6A6A),
                                          fontSize: 12),
                                    ),
                                    SizedBox(width:5),
                                    Text(
                                      'VAT included',
                                      style: TextStyle(
                                          color: Color(0xff6A6A6A),
                                          fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: imgList.map((url) {
                                  int index = imgList.indexOf(url);
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
                        );
                      },
                    );
                  }).toList(),
                ),

                //
                Padding(
                  padding: const EdgeInsets.only(left:20),
                  child: Text('You may like', style: TextStyle(fontSize: 20)),
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

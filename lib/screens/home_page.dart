import 'package:flutter/material.dart';

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
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //header
                Padding(
                  padding: const EdgeInsets.only(right: 20),
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
                  margin: EdgeInsets.only(top: 20, bottom: 20, right: 20),
                  height: 2,
                  width: double.infinity,
                  color: Colors.grey[350],
                ),
                //middle field
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      height: 375,
                      width: double.infinity,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      width: double.infinity,
                      height: 355,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 34, top: 14),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Icon(Icons.favorite_border, color: Colors.white),
                      ),
                    ),
                    //shopping icon
                    Positioned(
                      left: 250,
                      top: 320,
                      child: Container(
                        padding: EdgeInsets.all(6),
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Color(0xff2F69F8),
                          borderRadius: BorderRadius.circular(35),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
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
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          'Anti Social Club Hoodie',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Text(
                        '\$60',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Long 3/4 sleevs, sweartshirt',
                        style:
                            TextStyle(color: Color(0xff6A6A6A), fontSize: 12),
                      ),
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

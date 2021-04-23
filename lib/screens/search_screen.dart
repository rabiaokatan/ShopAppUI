import 'package:flutter/material.dart';
import 'package:shop_ui/widgets/header_widget.dart';
import 'package:shop_ui/widgets/search_page_container.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                headerWidget(text: 'Search'),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xffD9D9D9).withOpacity(0.5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'What are you looking for?',
                    ),
                  ),
                ),

                //middle field
                SizedBox(
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        searchPageContainer(
                            imagePath: 'assets/images/top.png', title: 'Top'),
                        searchPageContainer(
                            imagePath: 'assets/images/shoes.png',
                            title: 'Shoes'),
                        searchPageContainer(
                            imagePath: 'assets/images/trousers.png',
                            title: 'Trousers'),
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left:20, top:30, bottom:15),
                  child: Text(
                    'My Recent Searches',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

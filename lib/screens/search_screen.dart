import 'package:flutter/material.dart';
import 'package:shop_ui/models/product.dart';
import 'package:shop_ui/widgets/cart_page_container.dart';
import 'package:shop_ui/widgets/header_widget.dart';
import 'package:shop_ui/widgets/search_page_container.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchController = TextEditingController();
  List<Product> searchResult = [];

  void searchOperation(String searchText) {
    searchResult.clear();
    if (searchText != '') {
      for (var i in products) {
        if (i.title.toLowerCase().contains(searchText.toLowerCase())) {
          searchResult.add(i);
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  headerWidget(text: 'Search'),
                  Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                      controller: searchController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'What are you looking for?',
                      ),
                      onChanged: searchOperation,
                    ),
                  ),
                  searchResult.length == 0 || searchController.text.isEmpty
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //middle field
                            SizedBox(
                              height: 100,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    searchPageContainer(
                                        imagePath: 'assets/images/top.png',
                                        title: 'Top'),
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
                              padding: const EdgeInsets.only(
                                  left: 20, top: 30, bottom: 15),
                              child: Text(
                                'My Recent Searches',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 20),
                              ),
                            ),
                          ],
                        )
                      : ListView.builder(
                          shrinkWrap: true,
                          itemCount: searchResult.length,
                          itemBuilder: (BuildContext context, int index) {
                            return cartPageContainer(
                              title: searchResult[index].title,
                              brand: searchResult[index].brand,
                              photoUrl: searchResult[index].photoUrl,
                              size: searchResult[index].size,
                              quantity: searchResult[index].quantity,
                              color: searchResult[index].color,
                              cost: searchResult[index].cost,
                            );
                          },
                        ),
                ],
              )),
        ),
      ),
    );
  }
}

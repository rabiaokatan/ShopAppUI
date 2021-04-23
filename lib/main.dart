import 'package:flutter/material.dart';

import 'screens/cart_screen.dart';
import 'screens/home_page.dart';
import 'screens/search_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NavigationBar(),
    );
  }
}

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int _currentIndex=0;
  final List<Widget> _children=[
    HomePage(), //0
    HomePage(), //todo
    CartScreen(),//2
    SearchScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          elevation: 0.0,
          currentIndex:  _currentIndex,
          type:BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
               _currentIndex = index;
            });
          },
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color:
                    _currentIndex == 0 ? Color(0xff2f69f8) : Color(0xffD8D8D8),
              ),
              title: Text(
                '',
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border,
                color:
                    _currentIndex == 1 ? Color(0xff2f69f8) : Color(0xffD8D8D8),
              ),
              title: Text(
                '',
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag,
                color:
                    _currentIndex == 2 ? Color(0xff2f69f8) : Color(0xffD8D8D8),
              ),
              title: Text(
                '',
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color:
                    _currentIndex == 3 ? Color(0xff2f69f8) : Color(0xffD8D8D8),
              ),
              title: Text(
                '',
              ),
            ),
          ],
        ),
      
    );
  }
}
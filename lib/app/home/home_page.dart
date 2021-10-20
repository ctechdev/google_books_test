import 'package:flutter/material.dart';
import 'package:google_books_test/app/dashboard/dashboard.dart';
import 'package:google_books_test/app/favourites/fav_page.dart';
import 'package:google_books_test/app/search/search_page.dart';

import 'bottom_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int bottomSelectedIndex = 0;
  PageController pageController = PageController(initialPage: 1);



  static const List<Widget> _widgetOptions = <Widget>[
    Dashboard(),
    SearchPage(),
    FavouritesPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      drawerEnableOpenDragGesture: false,
      body: PageView(
          controller: pageController,
          onPageChanged: pageChanged,
          children: _widgetOptions),
      bottomNavigationBar: MyBottomAppBar(
        onTabSelected: _onItemTapped,
        selectedIndex: bottomSelectedIndex,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  void pageChanged(int index) {
    setState(() {
      bottomSelectedIndex = index;
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      bottomSelectedIndex = index;
      pageController.animateToPage(index,
          duration: const Duration(milliseconds: 500), curve: Curves.ease);
    });
  }
}

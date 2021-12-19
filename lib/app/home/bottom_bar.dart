// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class MyBottomAppBar extends StatefulWidget {
   MyBottomAppBar({Key? key, required this.onTabSelected, required this.selectedIndex}) : super(key: key);

  final ValueChanged<int> onTabSelected;
   int selectedIndex;

  @override
  _MyBottomAppBarState createState() => _MyBottomAppBarState();
}

class _MyBottomAppBarState extends State<MyBottomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      
      //margin: const EdgeInsets.only(left: 16, right: 16, bottom: 4),
      
      child: BottomNavigationBar(
        // fixedColor: const Color(0xffdf8369),
        //       backgroundColor: const Color(0xffC4C6CC),
        //type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        currentIndex: widget.selectedIndex,
        onTap: _updateIndex,
        items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/Home.png"),
                  size: 30),
              label: "Home"),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/Search.png"),
                size: 30,
              ),
              label: "Search"),
          
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/Star.png"),
                size: 30,
              ),
              label: "Favs"),
              
        ],
      ),
    );
  }

  void _updateIndex(int index) {
    widget.onTabSelected(index);
    setState(() {
      widget.selectedIndex = index;
    });
  }
}

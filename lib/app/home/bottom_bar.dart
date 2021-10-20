import 'package:flutter/material.dart';

class MyBottomAppBar extends StatefulWidget {
  MyBottomAppBar({required this.onTabSelected, required this.selectedIndex});

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
      
      margin: EdgeInsets.only(left: 16, right: 16, bottom: 4),
      
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        // const BorderRadius.only(
        //   topLeft: Radius.circular(30.0),
        //   topRight: Radius.circular(30.0),
        // ),
        child: BottomNavigationBar(
          fixedColor: Color(0xffdf8369),
                backgroundColor: const Color(0xffC4C6CC),
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

import 'package:flutter/material.dart';

class NavigationBar2 extends StatefulWidget {
  static int _selectedIndex = 0;

  const NavigationBar2({super.key});

  @override
  NavigationBar2State createState() => NavigationBar2State();
}

class NavigationBar2State extends State<NavigationBar2> {
  void _onItemTapped(int index) {
    setState(() {
      NavigationBar2._selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return BottomNavigationBar(
        elevation: 0, // to get rid of the shadow
        currentIndex: NavigationBar2._selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
        backgroundColor: Color(0xff0C1015).withOpacity(0.9), // transparent, you could use 0x44aaaaff to make it slightly less transparent with a blue hue.
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_rounded),
            label: 'inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'favourites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'profile',
          ),
        ]
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
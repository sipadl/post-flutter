import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatefulWidget {
  final Function(int) onItemTapped;
  final int selectedIndex;

  const CustomBottomNavBar({
    super.key,
    required this.onItemTapped,
    required this.selectedIndex,
  });

  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          label: 'List',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Setting',
        ),
      ],
      currentIndex: widget.selectedIndex,
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.grey,
      backgroundColor: Colors.grey[200],
      onTap: widget.onItemTapped,
      showSelectedLabels: true,
      showUnselectedLabels: true,
    );
  }
}

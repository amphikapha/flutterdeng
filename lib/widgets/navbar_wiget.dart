import 'package:flutter/material.dart';
import 'package:flutterdeng/data/notifiers.dart';

class NavBarWidget extends StatelessWidget {
  const NavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: selectedPageNotifier, 
    builder: (context, selectPage, child) {
      return NavigationBar(
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          onDestinationSelected: (int value) { // ใส่ type int ด้วยก็ดี
            selectedPageNotifier.value = value; // เปลี่ยนค่า selectedPageNotifier
          },
          selectedIndex: selectPage,
        );
    });
  }
}
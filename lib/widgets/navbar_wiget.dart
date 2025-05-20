import 'package:flutter/material.dart';

class NavBarWidget extends StatefulWidget {
  const NavBarWidget({super.key});

  @override
  State<NavBarWidget> createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  // เอาไว้ข้างนอกเพราะจะได้ไม่ต้องสร้างใหม่ทุกครั้ง
  // ถ้าอยู่ใน build จะสร้างใหม่ทุกครั้งที่มีการ rebuild
  int currentIndex = 0;
  
  @override
  Widget build(BuildContext context) {
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
            setState(() {
              currentIndex = value;
            });
          },
          selectedIndex: currentIndex,
        );
  }
}
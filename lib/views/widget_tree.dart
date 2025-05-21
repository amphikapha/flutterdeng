import 'package:flutter/material.dart';
import 'package:flutterdeng/data/constant.dart';
import 'package:flutterdeng/data/notifiers.dart';
import 'package:flutterdeng/views/pages/home_page.dart';
import 'package:flutterdeng/views/pages/profile_page.dart';
import 'package:flutterdeng/views/pages/setting_page.dart';
import 'package:flutterdeng/widgets/navbar_wiget.dart';
import 'package:shared_preferences/shared_preferences.dart';

List<Widget> pages = [HomePage(), ProfilePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo'),
        actions: [
          IconButton(
            icon: ValueListenableBuilder(
              valueListenable: isDarkModeNotifier,
              builder: (context, isDarkMode, child) {
                return isDarkMode
                    ? const Icon(Icons.light_mode)
                    : const Icon(Icons.dark_mode);
              },
            ),
            onPressed: () async {
              isDarkModeNotifier.value = !isDarkModeNotifier.value;
              final SharedPreferences prefs =await SharedPreferences.getInstance();
              await prefs.setBool(KConstants.themeModeKey, isDarkModeNotifier.value);
            },
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:
                      (context) => const SettingPage(title: 'Setting eiei'),
                ),
              );
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      bottomNavigationBar: NavBarWidget(),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selectPage, child) {
          return pages.elementAt(
            selectPage,
          ); // ใช้ currentIndex จาก NavBarWidget
        }, // ใช้ currentIndex จาก NavBarWidget
      ),
    );
  }
}

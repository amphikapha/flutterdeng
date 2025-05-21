import 'package:flutter/material.dart';
import 'package:flutterdeng/data/constant.dart';
import 'package:flutterdeng/data/notifiers.dart';
import 'package:flutterdeng/views/pages/welcome_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // เอาไว้ข้างนอกเพราะจะได้ไม่ต้องสร้างใหม่ทุกครั้ง
  // ถ้าอยู่ใน build จะสร้างใหม่ทุกครั้งที่มีการ rebuild
  // int currentIndex = 0; ย้ายไปไว้ใน NavBarWidget เพราะจะได้ rebuild แค่ NavBarWidget
  // ถ้าอยู่ใน build จะสร้างใหม่ทุกครั้งที่มีการ rebuild

  @override
  void initState() {
    initThemeMode();
    super.initState();
  }

  void initThemeMode() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final bool? themeMode = prefs.getBool(KConstants.themeModeKey);
    isDarkModeNotifier.value = themeMode ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: isDarkModeNotifier, builder:(context, isDarkMode, child) {
      return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: isDarkMode ? Brightness.dark : Brightness.light,
        ),
      ),
      home: WelcomePage()
    );
    },);
  }
}
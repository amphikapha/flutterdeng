import 'package:flutter/material.dart';
import 'package:flutterdeng/views/pages/login_page.dart';
import 'package:lottie/lottie.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FittedBox(
            child: const Text(
              'Welcome to Flutter Deng',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Lottie.asset(
              'assets/lotties/welcome.json',
            ),
          ),
          FilledButton(
            style: FilledButton.styleFrom(
              minimumSize: const Size(200, 45),
            ),
            onPressed: () {
              // Navigate to the next page
              Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context) => const LoginPage(),
              ));
            },
            child: const Text('Get Started'),
          ),
          TextButton(
            style: TextButton.styleFrom(
              minimumSize: const Size(200, 45),
            ),
            onPressed: () {
              // Navigate to the next page
              Navigator.pushReplacement(context, MaterialPageRoute(
                builder:(context) {
                  return LoginPage();
                },
              ));
            },
            child: const Text('Login'),
          ),
        ],
      ),
    );
  }
}
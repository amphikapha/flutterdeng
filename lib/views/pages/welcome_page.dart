import 'package:flutter/material.dart';
import 'package:flutterdeng/views/pages/login_page.dart';
import 'package:lottie/lottie.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
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
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => const LoginPage(title: 'Register'),
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
                    Navigator.push(context, MaterialPageRoute(
                      builder:(context) {
                        return LoginPage(title: 'Login');
                      },
                    ));
                  },
                  child: const Text('Login'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
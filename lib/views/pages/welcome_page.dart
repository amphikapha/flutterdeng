import 'package:flutter/material.dart';
import 'package:flutterdeng/views/widget_tree.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Welcome to Flutter Deng',
            style: TextStyle(fontSize: 24),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/images/macos.jpg',
                fit: BoxFit.cover,
                width: double.infinity,
                height: 300,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Navigate to the next page
              Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context) => const WidgetTree(),
              ));
            },
            child: const Text('Go to Home'),
          ),
        ],
      ),
    );
  }
}
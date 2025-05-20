import 'package:flutter/material.dart';
import 'package:flutterdeng/views/widget_tree.dart';
import 'package:flutterdeng/widgets/hero_widget.dart';

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
            child: HeroWidget()
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
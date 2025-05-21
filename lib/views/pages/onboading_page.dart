import 'package:flutter/material.dart';
import 'package:flutterdeng/views/pages/login_page.dart';
import 'package:lottie/lottie.dart';

class OnboadingPage extends StatelessWidget {
  const OnboadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset('assets/lotties/hi.json',),
                SizedBox(height: 10),
                Text(
                  'Welcome to Flutter Deng!',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                FilledButton(
                  style: FilledButton.styleFrom(
                    minimumSize: const Size(200, 45),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder:(context) {
                        return LoginPage(title: 'Register');
                      },
                    ));
                  },
                  child: Text('Next'),
                ),
                SizedBox(height: 100),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

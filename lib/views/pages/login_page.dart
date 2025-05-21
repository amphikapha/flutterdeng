import 'package:flutter/material.dart';
import 'package:flutterdeng/views/widget_tree.dart';
import 'package:flutterdeng/widgets/hero_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();

  String confirmEmail = '123';
  String confirmPassword = '000';

  @override
  void dispose() {
    // Dispose of the controllers when the widget is removed from the widget tree
    controllerEmail.dispose();
    controllerPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            HeroWidget(title: 'Login'),
            SizedBox(height: 20),
            TextField(
              controller: controllerEmail,
              decoration: InputDecoration(
                hintText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onEditingComplete: () => setState(() {}),
            ),
            SizedBox(height: 10),
            TextField(
              controller: controllerPassword,
              decoration: InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onEditingComplete: () => setState(() {}),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: FilledButton.styleFrom(minimumSize: const Size(200, 45)),
              onPressed: () {
                onLoginPressed();
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }

  void onLoginPressed() {
    if (controllerEmail.text == confirmEmail &&
        controllerPassword.text == confirmPassword) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const WidgetTree(),
        ),
      );
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Error'),
            content: const Text('Invalid email or password'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }
}

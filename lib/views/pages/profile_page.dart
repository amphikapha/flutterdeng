import 'package:flutter/material.dart';
import 'package:flutterdeng/views/pages/welcome_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text('Log out'),
          onTap: () {
            Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context) => const WelcomePage(),
              ));
          })
      ],
    );
  }
}
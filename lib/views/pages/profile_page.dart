import 'package:flutter/material.dart';
import 'package:flutterdeng/data/notifiers.dart';
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
            selectedPageNotifier.value = 0;
            Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context) => const WelcomePage(),
              ));
          })
      ],
    );
  }
}
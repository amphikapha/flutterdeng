import 'package:flutter/material.dart';
import 'package:flutterdeng/widgets/container_widget.dart';
import 'package:flutterdeng/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            HeroWidget(title: 'Home'),
            Column(
              children: List.generate(5, (index) {
                return ContainerWidget(
                  title: 'Hello from Card',
                  description: 'This is a description',
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}

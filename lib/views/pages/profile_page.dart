import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController nameController = TextEditingController();
  bool? isChecked = false;
  bool isSwitched = false;
  double sliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
              ),
              onEditingComplete:() => setState(() {}),
            ),
            Text(nameController.text),
            Checkbox(
              tristate: true,
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),
            CheckboxListTile.adaptive(
              tristate: true,
              title: const Text('Check me'),
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),
            Switch(value: isSwitched, onChanged:(value) => setState(() {
              isSwitched = value;
            }),),
            SwitchListTile.adaptive(
              title: const Text('Switch me'),
              value: isSwitched,
              onChanged: (bool value) {
                setState(() {
                  isSwitched = value;
                });
              },
            ),
            Slider.adaptive(
              max: 10.0,
              divisions: 10,
              value: sliderValue, 
              onChanged:(value) => setState(() {
              sliderValue = value;
            }),), 
            GestureDetector(
              onTap:() {
                print('Image tapped');
              },
              child: Image.asset('assets/images/macos.jpg'),
            ),
            InkWell(
              splashColor: Colors.red,
              onTap:() {
                print('Image tapped from InkWell');
              },
              child: Container(
                width: double.infinity,
                height: 500,
                color: Colors.white12,
                // child: const Center(child: Text('InkWell')),
              ),
            ),
          ]
        ),
      ),
    );
  }
}
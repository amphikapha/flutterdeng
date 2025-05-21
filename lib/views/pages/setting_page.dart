import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key, required this.title});

  final String title;

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  TextEditingController nameController = TextEditingController();
  bool? isChecked = false;
  bool isSwitched = false;
  double sliderValue = 0.0;
  String? menuItem = 'e1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        // automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownButtonFormField(
              value: menuItem,
              items: [
              DropdownMenuItem(
                value: 'e1',
                child: Text('e1'),
              ),
              DropdownMenuItem(
                value: 'e2',
                child: Text('e2'),
              ),
              DropdownMenuItem(
                value: 'e3',
                child: Text('e3'),
              ),
            ], onChanged:(value) => setState(() {
              menuItem = value;
            })),
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
            InkWell(
              splashColor: Colors.teal,
              onTap:() {
                print('Image tapped from InkWell');
              },
              child: Container(
                width: double.infinity,
                height: 50,
                color: Colors.white12,
                child: const Center(child: Text('InkWell')),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    duration: Duration(seconds: 5),
                    behavior: SnackBarBehavior.floating,
                    content: const Text('Hello from Snack Bar'),
                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {
                        print('Undo pressed');
                      },
                    ),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                foregroundColor: Colors.white,
              ),
              child: const Text('Snack Bar'),
            ),
            ElevatedButton(
              onPressed: () {
                print('EvaluatedButton pressed');
              },
              child: const Text('EvaluatedButton'),
            ),
            CloseButton(),
            BackButton()
          ]
        ),
      ),
    ),
    );
  }
}
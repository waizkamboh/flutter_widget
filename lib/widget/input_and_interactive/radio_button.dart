import 'package:flutter/material.dart';

class RadioButtonWidget extends StatefulWidget {
  const RadioButtonWidget({super.key});

  @override
  State<RadioButtonWidget> createState() => _RadioButtonWidgetState();
}
List<String> options = ['Option1', 'Option2'];

class _RadioButtonWidgetState extends State<RadioButtonWidget> {

  String currentOption = options[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
           ListTile(
             title: Text('Option1'),
             leading: Radio(
                 value: options[0],
                 groupValue: currentOption,
                 onChanged: (value) {
                   setState(() {
                     currentOption = value.toString();
                   });
                 }
             ),
           ),
          ListTile(
             title: Text('Option2'),
             leading: Radio(
                 value: options[1],
                 groupValue: currentOption,
                 onChanged: (value) {
                   setState(() {
                     currentOption = value.toString();
                   });
                 }
             ),
           ),
        ],
      ),
    );
  }
}

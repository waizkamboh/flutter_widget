import 'package:flutter/material.dart';

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({super.key});

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Checkbox(
            value: isChecked,
            activeColor: Colors.orangeAccent,
            tristate: true,
            onChanged: (newValue) {
              setState(() {
                isChecked = newValue;
              });
            }
        ),
      ),
    );
  }
}

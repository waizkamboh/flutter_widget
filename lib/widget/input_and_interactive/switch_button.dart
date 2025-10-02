import 'package:flutter/material.dart';

class SwitchButtonWidget extends StatefulWidget {
  const SwitchButtonWidget({super.key});

  @override
  State<SwitchButtonWidget> createState() => _SwitchButtonWidgetState();
}

class _SwitchButtonWidgetState extends State<SwitchButtonWidget> {
  bool notification = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Switch(
          activeColor: Colors.orange,
            value: notification,
            onChanged: (value) {
            setState(() {
              notification = value;

            });
        })
      ),
    );
  }
}

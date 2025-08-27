import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(
          Icons.baby_changing_station,
          size: 100,
          color: Colors.red,
          semanticLabel: 'Baby changing',
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SpacerWidget extends StatefulWidget {
  const SpacerWidget({super.key});

  @override
  State<SpacerWidget> createState() => _SpacerWidgetState();
}

class _SpacerWidgetState extends State<SpacerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            height: 60,
            width: 60,
            color: Colors.amber,
          ),
          Spacer(),
          Container(
            height: 60,
            width: 60,
            color: Colors.blueAccent,
          ),
          Spacer(),
          Container(
            height: 60,
            width: 60,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ConstraintBoxWidget extends StatefulWidget {
  const ConstraintBoxWidget({super.key});

  @override
  State<ConstraintBoxWidget> createState() => _ConstraintBoxWidgetState();
}

class _ConstraintBoxWidgetState extends State<ConstraintBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Constraint Box')),
      body: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: 100,
          minWidth: 200,
          maxWidth: 200,
          maxHeight: 400,
        ),
        child: Text(
          'Hello World! Hello World! Hello World! Hello World! Hello World! Hello World! Hello World! Hello World! Hello World! Hello World! Hello World! Hello World! Hello World! Hello World!',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}

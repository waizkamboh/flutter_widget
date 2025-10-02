import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatefulWidget {
  const ElevatedButtonWidget({super.key});

  @override
  State<ElevatedButtonWidget> createState() => _ElevatedButtonWidgetState();
}

class _ElevatedButtonWidgetState extends State<ElevatedButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
              onPressed: null,
              child: Text('Disabled')
          ),
          ElevatedButton(
              onPressed: (){},
              child: Text('Enabled')
          ),
          ElevatedButton.icon(
              onPressed: () {},
              label: Text('Enabled'),
              icon: Icon(Icons.message),
          )
        ],
      ),
    );
  }
}

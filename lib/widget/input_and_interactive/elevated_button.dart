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
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(
              onPressed: null,
              child: Text('Disabled')
          ),
          SizedBox(height: 30,),
          ElevatedButton(
              onPressed: (){},
              child: Text('Enabled')
          ),
          SizedBox(height: 30,),
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

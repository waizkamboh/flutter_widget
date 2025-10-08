import 'package:flutter/material.dart';

class ProgressIndicatorWidget extends StatefulWidget {
  const ProgressIndicatorWidget({super.key});

  @override
  State<ProgressIndicatorWidget> createState() => _ProgressIndicatorWidgetState();
}

class _ProgressIndicatorWidgetState extends State<ProgressIndicatorWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              backgroundColor: Colors.greenAccent,
              value: 5,
              strokeWidth: 10,
              strokeAlign: 10,


            ),
            SizedBox(height: 500,),
            LinearProgressIndicator(
              backgroundColor: Colors.greenAccent,
              value: 5,
              minHeight: 10,
              stopIndicatorColor: Colors.grey,


            )
          ],
        ),
      ),
    );
  }
}

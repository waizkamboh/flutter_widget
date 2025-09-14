import 'package:flutter/material.dart';

class MediaQueryWidget extends StatefulWidget {
  const MediaQueryWidget({super.key});

  @override
  State<MediaQueryWidget> createState() => _MediaQueryWidgetState();
}

class _MediaQueryWidgetState extends State<MediaQueryWidget> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    
    return Scaffold(
       body: Center(
         child: Text('$screenWidth $screenHeight'),
       ),
    );
  }
}


import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerWidget extends StatefulWidget {
  const AnimatedContainerWidget({super.key});

  @override
  State<AnimatedContainerWidget> createState() => _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {

  double height = 100;
  double width = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          height: height,
            width: width,
            decoration: BoxDecoration(
              color: Colors.red
            ),
            duration: Duration(milliseconds: 500),
          curve: Curves.fastLinearToSlowEaseIn,

        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            final random = Random();
            height =  random.nextInt(300).toDouble();
            width = random.nextInt(300).toDouble();
            setState(() {

            });
          }
      ),
    );
  }
}

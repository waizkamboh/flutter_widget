
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
  Color color = Colors.green;

  BorderRadiusGeometry borderRadius = BorderRadius.circular(300);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          height: height,
            width: width,
            decoration: BoxDecoration(
              color: color,
              borderRadius: borderRadius
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
            color = Color.fromRGBO(
              random.nextInt(256),
              random.nextInt(256),
              random.nextInt(256),
              1
            );
            borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
            setState(() {

            });
          }
      ),
    );
  }
}

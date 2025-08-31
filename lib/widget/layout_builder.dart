import 'package:flutter/material.dart';

class LayoutBuilderWidget extends StatefulWidget {
  const LayoutBuilderWidget({super.key});

  @override
  State<LayoutBuilderWidget> createState() => _LayoutBuilderWidgetState();
}

class _LayoutBuilderWidgetState extends State<LayoutBuilderWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      //Parents constraints to calculate the child constraints
      // body: Container(
      //    height: size.height * 0.5,
      //    width: size.width,
      //   color: Colors.red,
      //   alignment: Alignment.center,
      //   child: LayoutBuilder(
      //     builder: (context, constraints){
      //       return Container(
      //         height: constraints.maxHeight * 0.5,
      //         width: constraints.maxWidth * 0.5,
      //         alignment: Alignment.center,
      //         color: Colors.green,
      //       );
      //     },
      //   ),
      // ),
      //Different ui for different screen size
      body: Center(
        child: LayoutBuilder(
            builder: (context, constraints){
              if(constraints.maxWidth > 600){
                return Text('This is web!');
              }
              return Text('This is mobile!');
            }
        ),
      ),
    );
  }
}

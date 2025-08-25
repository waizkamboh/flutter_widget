import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                  'Hello World',
                   style: TextStyle(
                    // inherit: false, // means inherit from the nearest DefaultTextStyle above in the widget tree
                     color: Colors.red,
                    // backgroundColor: Colors.blue,
                     fontSize: 30,
                     fontWeight: FontWeight.w500,
                     fontStyle: FontStyle.italic,
                     letterSpacing: 10,
                     wordSpacing: 50,
                     textBaseline: TextBaseline.values[1],
                     height: 10,
                     leadingDistribution: TextLeadingDistribution.even,
                     locale: Locale('ur'),
                     // foreground: Paint(
                     //
                     // ),
                     // background: Paint(),
                     shadows: [
                       Shadow(
                         color: Colors.black,
                         blurRadius: 10,
                         offset: Offset.zero
                        ),
                       Shadow(
                         color: Colors.yellow,
                         blurRadius: 10,
                         offset: Offset.zero
                       ),

                     ],
                     decoration: TextDecoration.combine(
                       [
                         TextDecoration.lineThrough,
                         TextDecoration.overline,
                       ]
                     ),
                     decorationColor: Colors.red,
                     decorationStyle: TextDecorationStyle.wavy,
                     decorationThickness: 1,
                     debugLabel: 'Hello',
                     fontFamily: '',
                     overflow: TextOverflow.visible
                   ),
                   textDirection: TextDirection.rtl,

              ),
            ),
          ],
        ),
      ),
    );
  }
}

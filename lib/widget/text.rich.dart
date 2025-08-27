import 'package:flutter/material.dart';

class TextDotRichWidget extends StatelessWidget {
  const TextDotRichWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text.rich(
                 TextSpan(
                     text: 'Hello',
                     style: TextStyle(fontSize: 20),
                   children: <InlineSpan>[
                     TextSpan(
                       text: 'World',
                       style: TextStyle(fontSize: 40, color:Colors.blue)
                     ),
                     TextSpan(
                       text: ' !',
                       style: TextStyle(fontSize: 50)
                     )
                   ]
                 )
              )
            ],
          ),
        ),
      ),
    );
  }
}

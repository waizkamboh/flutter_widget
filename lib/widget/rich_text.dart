import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SafeArea(
         child: Column(
           children: [
             RichText(
                 text: TextSpan(
                   style: DefaultTextStyle.of(context).style,
                   children: <TextSpan>[
                     TextSpan(text: 'Hello'),
                     TextSpan(text: 'World'),
                     TextSpan(text: 'Programmer', style: TextStyle(fontWeight: FontWeight.bold)),
         
                   ]
                 )
             )
           ],
         ),
       ),
    );
  }
}

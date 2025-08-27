import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SafeArea(
         child: Center(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               RichText(
                   text: TextSpan(
                     text: 'First',
                     style: TextStyle(fontSize: 20, color: Colors.green),
                     children: <TextSpan>[
                       TextSpan(text: 'Second', style: TextStyle(fontSize: 40, color: Colors.black)),
                       TextSpan(text: 'Third', style: TextStyle(fontSize: 30, color: Colors.blue)),
                       TextSpan(text: 'Default',),

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

import 'package:flutter/material.dart';

class TextDotRichWidget extends StatelessWidget {
  const TextDotRichWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text.rich(
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
            ),
            const SizedBox(height: 100,),
            ElevatedButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: const Text('Go Back')
            )
          ],
        )
      ),
    );
  }
}

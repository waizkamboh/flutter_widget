import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Hero(
              tag: 'Tag1',
              child: InkWell(
                  onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=> HeroWidget1()));
                  },
                  child: FlutterLogo(
                    size: 100,
                  )
              ),
            ),
          )
        ],
      ),
    );
  }
}
class HeroWidget1 extends StatelessWidget {
  const HeroWidget1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Hero(
              tag: 'Tag1',
              child: InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: FlutterLogo(
                    size: 500,
                  )
              ),
            ),
          )
        ],
      ),
    );
  }
}


import 'package:flutter/material.dart';

class MediaQueryWidget extends StatefulWidget {
  const MediaQueryWidget({super.key});

  @override
  State<MediaQueryWidget> createState() => _MediaQueryWidgetState();
}

class _MediaQueryWidgetState extends State<MediaQueryWidget> {

  bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 600;

  bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    
    return Scaffold(
       body: Center(
         child: Row(
           children: [
             //sText('$screenWidth , $screenHeight'),
             if(isDesktop(context))
             Container(
               color: Colors.blue,
               width: 200,
               child: const Center(
                 child: Text('SIDEBAR'),
               ),
             ),
             Expanded(
               child: Container(
                 color: Colors.red,
                 child: const Center(
                   child: Text('CONTENT'),
                 ),
               ),
             ),

           ],
         ),

       ),
    );
  }
}

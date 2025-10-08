import 'package:flutter/material.dart';

class OverlayWidget extends StatefulWidget {
  const OverlayWidget({super.key});

  @override
  State<OverlayWidget> createState() => _OverlayWidgetState();
}

class _OverlayWidgetState extends State<OverlayWidget> {

  OverlayEntry? entry;
  Offset offset = Offset(20, 40);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton.icon(
                onPressed: showOverlay,
                label: Text('Show Floating Widget'),
                icon: Icon(Icons.visibility),
            )
          ],
        ),
      ),
    );
  }

  void showOverlay() {
    entry = OverlayEntry(
        builder: (context) => Positioned(
          left: offset.dx,
          top: offset.dy,
          child: GestureDetector(
            onPanUpdate: (details){
              offset += details.delta;
              entry!.markNeedsBuild();
            },
            child: ElevatedButton.icon(
                onPressed: (){},
                label: Text('Record'),
                icon: Icon(Icons.stop_circle_rounded),
            ),
          ),
        )
    );
    final overlay = Overlay.of(context);
    overlay.insert(entry!);

  }
}

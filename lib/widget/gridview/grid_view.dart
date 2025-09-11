import 'package:flutter/material.dart';

class GridViewWidget extends StatefulWidget {
  const GridViewWidget({super.key});

  @override
  State<GridViewWidget> createState() => _GridViewWidgetState();
}

class _GridViewWidgetState extends State<GridViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: GridView(
          scrollDirection: Axis.horizontal,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
          children: [
           Image.network('https://images.unsplash.com/photo-1441974231531-c6227db76b6e?w=1200&q=80'),
           Image.network('https://images.unsplash.com/photo-1441974231531-c6227db76b6e?w=1200&q=80'),
           Image.network('https://images.unsplash.com/photo-1441974231531-c6227db76b6e?w=1200&q=80'),
           Image.network('https://images.unsplash.com/photo-1441974231531-c6227db76b6e?w=1200&q=80'),
           Image.network('https://images.unsplash.com/photo-1441974231531-c6227db76b6e?w=1200&q=80'),
           Image.network('https://images.unsplash.com/photo-1441974231531-c6227db76b6e?w=1200&q=80'),
           Image.network('https://images.unsplash.com/photo-1441974231531-c6227db76b6e?w=1200&q=80'),
           Image.network('https://images.unsplash.com/photo-1441974231531-c6227db76b6e?w=1200&q=80'),
           Image.network('https://images.unsplash.com/photo-1441974231531-c6227db76b6e?w=1200&q=80'),
           Image.network('https://images.unsplash.com/photo-1441974231531-c6227db76b6e?w=1200&q=80'),
           Image.network('https://images.unsplash.com/photo-1441974231531-c6227db76b6e?w=1200&q=80'),

          ],
        ),
      ),
    );
  }
}

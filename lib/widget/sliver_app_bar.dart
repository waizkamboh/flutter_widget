import 'package:flutter/material.dart';

class SliverAppBarWidget extends StatefulWidget {
  const SliverAppBarWidget({super.key});

  @override
  State<SliverAppBarWidget> createState() => _SliverAppBarWidgetState();
}

class _SliverAppBarWidgetState extends State<SliverAppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            floating: true,
            expandedHeight: 160.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Sliver App bar', style: TextStyle(color: Colors.white),),
              background: Image.network('https://images.unsplash.com/photo-1441974231531-c6227db76b6e?w=1200&q=80', fit: BoxFit.cover,),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index){
                    return ListTile(
                      title: Text('Item ${index + 1}'),
                    );
                  },
                childCount: 20,

              )
          )
        ],
      ),
    );
  }
}

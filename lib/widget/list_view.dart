import 'package:flutter/material.dart';

class ListViewWidget extends StatefulWidget {
  const ListViewWidget({super.key});

  @override
  State<ListViewWidget> createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(20),
       // physics: NeverScrollableScrollPhysics(),
        reverse: true,
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 150,
            color: Colors.redAccent,
            child: Text(''),
          ),Container(
            width: 150,
            color: Colors.greenAccent,
            child: Text(''),
          ),Container(
            width: 150,
            color: Colors.blueAccent,
            child: Text(''),
          ),Container(
            width: 150,
            color: Colors.amberAccent,
            child: Text(''),
          ),Container(
            width: 150,
            color: Colors.cyanAccent,
            child: Text(''),
          ),Container(
            width: 150,
            color: Colors.deepOrangeAccent,
            child: Text(''),
          ),Container(
            width: 150,
            color: Colors.lightBlueAccent,
            child: Text(''),
          ),
        ],
      ),
    );
  }
}

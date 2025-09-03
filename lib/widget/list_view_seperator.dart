import 'package:flutter/material.dart';

class ListViewSeparatorWidget extends StatefulWidget {
  const ListViewSeparatorWidget({super.key});

  @override
  State<ListViewSeparatorWidget> createState() => _ListViewSeparatorWidgetState();
}

class _ListViewSeparatorWidgetState extends State<ListViewSeparatorWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View Seperator'),
      ),
      body: ListView.separated(
        itemCount: 30,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.lightBlueAccent,
            child: Padding(
                padding: EdgeInsets.all(20),
              child: Text('Person ${index + 1}'),
            ),
          );
        },
        separatorBuilder: (context, index){
          return Divider();
        },
      ),
    );
  }
}

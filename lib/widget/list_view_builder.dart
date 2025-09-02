import 'package:flutter/material.dart';

class ListViewBuilderWidget extends StatefulWidget {
  const ListViewBuilderWidget({super.key});

  @override
  State<ListViewBuilderWidget> createState() => _ListViewBuilderWidgetState();
}

class _ListViewBuilderWidgetState extends State<ListViewBuilderWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View Builder'),
      ),
      body: Column(
        children: [
          ListView.builder(
            itemCount: 40,
              itemBuilder: (context, index){
                return ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Person $index'),
                  trailing: Icon(Icons.call),
                );
              }
          )
        ],
      ),
    );
  }
}

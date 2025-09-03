import 'package:flutter/material.dart';

class ListViewSeperatorWidget extends StatefulWidget {
  const ListViewSeperatorWidget({super.key});

  @override
  State<ListViewSeperatorWidget> createState() => _ListViewSeperatorWidgetState();
}

class _ListViewSeperatorWidgetState extends State<ListViewSeperatorWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View Seperator'),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({super.key});

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.home),
                  ),
                  Tab(
                    icon: Icon(Icons.settings),
                  ),
                  Tab(
                    icon: Icon(Icons.person),
                  )
                ]
            ),
            title: Text('Tab bar'),
          ),
           body: TabBarView(
               children: [
               Container(
                 color: Colors.orangeAccent,
                 child: Icon(Icons.home),
               ),
                 Container(
                 color: Colors.redAccent,
                 child: Icon(Icons.settings),
               ),
                 Container(
                 color: Colors.orangeAccent,
                 child: Icon(Icons.person),
               ),
           ]),
        )
    );
  }
}

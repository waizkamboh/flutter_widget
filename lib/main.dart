import 'package:flutter/material.dart';
import 'package:flutter_widget/reorderable_list_view.dart';
import 'package:flutter_widget/widget/bottom_navigation_bar.dart';
import 'package:flutter_widget/widget/drawer.dart';
import 'package:flutter_widget/widget/icon.dart';
import 'package:flutter_widget/widget/rich_text.dart';
import 'package:flutter_widget/widget/sliver_app_bar.dart';
import 'package:flutter_widget/widget/tab_bar.dart';
import 'package:flutter_widget/widget/text.dart';
import 'package:flutter_widget/widget/text.rich.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: SliverAppBarWidget(),
    );
  }
}



import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/aspect_ratio.dart';
import 'package:flutter_widget/widget/constraint_box.dart';
import 'package:flutter_widget/widget/gridview/grid_view.dart';
import 'package:flutter_widget/widget/input_and_interactive/all_type_of_button.dart';
import 'package:flutter_widget/widget/input_and_interactive/check_box.dart';
import 'package:flutter_widget/widget/input_and_interactive/gesture_detector_widget.dart';
import 'package:flutter_widget/widget/listview/list_view_builder.dart';
import 'package:flutter_widget/widget/listview/list_view_seperator.dart';
import 'package:flutter_widget/widget/otherwidget/media_query.dart';
import 'package:flutter_widget/widget/reorderable_list_view.dart';
import 'package:flutter_widget/widget/animated_container.dart';
import 'package:flutter_widget/widget/bottom_navigation_bar.dart';
import 'package:flutter_widget/widget/drawer.dart';
import 'package:flutter_widget/widget/icon.dart';
import 'package:flutter_widget/widget/layout_builder.dart';
import 'package:flutter_widget/widget/listview/list_view.dart';
import 'package:flutter_widget/widget/rich_text.dart';
import 'package:flutter_widget/widget/sliver_app_bar.dart';
import 'package:flutter_widget/widget/spacer.dart';
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
      home: CheckBoxWidget(),
    );
  }
}



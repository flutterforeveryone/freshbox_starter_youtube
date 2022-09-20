import 'package:flutter/material.dart';
import 'package:freshbox_starter_youtube/utilities/theme.dart';
import 'package:get/get.dart';

import 'module/main_navigation/view/main_navigation_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: defaultTheme,
      home: MainNavigationView(),
    );
  }
}

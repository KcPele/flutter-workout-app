import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/video_info.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/state_manager.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: "flutter App",
    theme: ThemeData(primarySwatch: Colors.blue),
    home: HomePage(),
  ));
}

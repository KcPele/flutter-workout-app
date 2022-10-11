import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "flutter App",
    theme: ThemeData(primarySwatch: Colors.blue),
    home: HomePage(),
  ));
}

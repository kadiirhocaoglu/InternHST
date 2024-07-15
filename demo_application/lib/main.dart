import 'package:flutter/material.dart';
import 'package:demo_application/home_page.dart';
void main() {
  runApp(MaterialApp(
    theme: ThemeData(appBarTheme: AppBarTheme(backgroundColor: Colors.grey)),
    home: HomePage() ,
  ));
}
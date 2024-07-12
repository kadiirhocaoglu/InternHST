import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../product/widget/animated_text.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/bg_food_starter.png"),
                  fit: BoxFit.cover)),
          padding: EdgeInsets.all(100.0),
          
              ),                
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../product/widget/animated_text.dart';

class StarterPage extends StatefulWidget {
  const StarterPage({super.key});

  @override
  State<StarterPage> createState() => _StarterPageState();
}

class _StarterPageState extends State<StarterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/bg_hstnew.png"),
                  fit: BoxFit.cover)),
          padding: EdgeInsets.all(100.0),
          child: 
              Container(
                padding: EdgeInsets.only(bottom: 180.0, left: 20.0),
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/ic_hst_logo.png"))),
                child: Typewriter(),
              ),
              
              ),                
    );
  }
}

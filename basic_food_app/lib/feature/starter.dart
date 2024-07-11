import 'package:flutter/material.dart';

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
        alignment: Alignment.center,
        decoration: BoxDecoration(color: Color.fromARGB(1, 69, 144, 97)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             
          ],
        ),
      ),
    );
  }
}
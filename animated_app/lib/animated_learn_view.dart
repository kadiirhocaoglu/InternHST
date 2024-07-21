import 'package:flutter/material.dart';

class AnimatedLearnView extends StatefulWidget {
  const AnimatedLearnView({super.key});

  @override
  State<AnimatedLearnView> createState() => _AnimatedLearnViewState();
}

class _AnimatedLearnViewState extends State<AnimatedLearnView> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(onPressed: (){
          setState(() {
            isVisible = !isVisible;
          });
        }, icon: Icon(Icons.change_circle))
      ],),
      body: AnimatedCrossFade(
      firstChild: Container(decoration: BoxDecoration(color: Colors.red),),
      secondChild: Container(decoration: BoxDecoration(color: Colors.green),),
      crossFadeState: isVisible ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      duration: Duration(seconds: 1),
    ),
    );
  }
}
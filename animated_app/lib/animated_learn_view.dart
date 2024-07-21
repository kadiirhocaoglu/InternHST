import 'package:flutter/material.dart';

class AnimatedLearnView extends StatefulWidget {
  const AnimatedLearnView({super.key});

  @override
  State<AnimatedLearnView> createState() => _AnimatedLearnViewState();
}

class _AnimatedLearnViewState extends State<AnimatedLearnView>  with TickerProviderStateMixin {

  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this, duration: Duration(seconds: 2));
  }
    bool isVisible = true;
  bool isOpacity = true;
  late AnimationController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(onPressed: (){
          setState(() {
            isVisible = !isVisible;
            controller.animateTo( isVisible ? 1:0);
          });
        }, icon: Icon(Icons.change_circle))
      ],),
      body: ListView(
        children: [
          Container(
            height: 100,
            child: AnimatedCrossFade(
            firstChild: Container(decoration: BoxDecoration(color: Colors.red),),
            secondChild: Container(decoration: BoxDecoration(color: Colors.green),),
            crossFadeState: isVisible ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: Duration(seconds: 1),
                ),
          ),
          Container(child: ListTile(title: AnimatedOpacity(opacity: isVisible ? 1 : 0, duration: Duration(seconds: 1), child: Text("Merhaba")))),
          Container(
            child: AnimatedDefaultTextStyle(child: const Text("Data"), style: (isVisible ? Theme.of(context).textTheme.headlineLarge : Theme.of(context).textTheme.displayLarge) ?? TextStyle(), duration: Duration(seconds: 2),),
          ),
          Container(height: 540, decoration: BoxDecoration(color: Colors.amber),),
          Container(
            child: AnimatedIcon(progress: controller, icon: AnimatedIcons.arrow_menu),
          ),
          AnimatedContainer(duration: Duration(seconds: 2), height: isVisible ? 100 : 0, decoration: BoxDecoration(color: Colors.blue),)
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

class Widget100 extends StatefulWidget {
  final Widget widget;
  final int sec;

  Widget100(this.sec, this.widget);

  @override
  State<Widget100> createState() => _Widget100State();
}

class _Widget100State extends State<Widget100> with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: widget.sec), 
      vsync: this,
    );

    _controller.forward().whenComplete(() {
      _controller.dispose();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FadeTransition(
        opacity: _controller,
        child: Container(
          child: widget.widget,
        ),
      ),
    );
  }
}

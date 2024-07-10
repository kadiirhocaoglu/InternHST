import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Typewriter extends StatelessWidget {
  const Typewriter({
    super.key
  });
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
  child: DefaultTextStyle(
    style: const TextStyle(
      fontSize: 20.0,
    ),
    child: AnimatedTextKit(
      animatedTexts: [
        TypewriterAnimatedText('Hazırlanıyor'),
        TypewriterAnimatedText('Kontrol Ediliyor'),
        TypewriterAnimatedText('Hoşgeldin'),
      ],
      onTap: () {
        print("Tap Event");
      },
    ),
  ),
);
  }

}
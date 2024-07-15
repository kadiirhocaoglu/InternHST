import 'package:flutter/material.dart';

enum ImageConstants {
  microphone('ic_microphone');

  final String value;
  const ImageConstants(this.value);

  String get toPng => 'assets/images/$value.png';
  String get toSvg => 'assets/images/$value.svg';
  
}
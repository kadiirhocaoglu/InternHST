

import 'package:flutter/material.dart';

enum SignupPadding {
  ///5.0
  verylow(5),

  ///10.0
  low(10),

  ///20.0
  medium(20),

  ///30.0
  high(30);

  final double value;
  const SignupPadding(this.value);
  ///All sides padding with [value]
  EdgeInsets get padding => EdgeInsets.all(value);
  
  ///Vertical sides padding with [value]
  EdgeInsets get paddingVertical => EdgeInsets.symmetric(vertical: value);
  
  ///Horizontal sides padding with [value]
  EdgeInsets get paddingHorizontal => EdgeInsets.symmetric(horizontal: value);
}
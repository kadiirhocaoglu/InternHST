

import 'package:flutter/material.dart';

enum SignupSizeConstants {
  ///5.0
  verylow(5),

  ///10.0
  low(10),

  ///20.0
  medium(20),

  ///30.0
  high(30),

  ///Normal Button Height [value]
  normalButtonHeight(56);

  final double value;
  const SignupSizeConstants(this.value);

  ///All sides padding with [value]
  EdgeInsets get padding => EdgeInsets.all(value);
  
  ///Vertical sides padding with [value]
  EdgeInsets get paddingVertical => EdgeInsets.symmetric(vertical: value);
  
  ///Horizontal sides padding with [value]
  EdgeInsets get paddingHorizontal => EdgeInsets.symmetric(horizontal: value);

  ///All sides margin with [value]
  EdgeInsets get margin => EdgeInsets.all(value);
  
  ///Vertical sides margin with [value]
  EdgeInsets get marginVertical => EdgeInsets.symmetric(vertical: value);
  
  ///Horizontal sides margin with [value]
  EdgeInsets get marginHorizontal => EdgeInsets.symmetric(horizontal: value);

  Radius get radiusCircular => Radius.circular(value);
  Radius get radiusZero => Radius.zero;
}
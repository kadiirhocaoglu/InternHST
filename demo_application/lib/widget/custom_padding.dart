import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class PaddingItems {
  PaddingItems._privateConstructor();

  static final PaddingItems shared = PaddingItems._privateConstructor();

  EdgeInsetsGeometry paddingVerticalSmall() {
    EdgeInsets padding = EdgeInsets.symmetric(vertical: 8.0);
    return padding;
  }
  
  EdgeInsetsGeometry paddingHorizontalSmall() {
    EdgeInsets padding = EdgeInsets.symmetric(horizontal: 8.0);
    return padding;
  }

  EdgeInsetsGeometry paddingVerticalMedium() {
    EdgeInsets padding = EdgeInsets.symmetric(vertical: 16.0);
    return padding;
  }
}

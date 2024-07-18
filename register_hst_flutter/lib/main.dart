import 'package:flutter/material.dart';
import 'package:register_hst_flutter/feature/singup/signup_view.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData.light().copyWith(appBarTheme: AppBarTheme()),
    home: SingupView(),
  ));
}

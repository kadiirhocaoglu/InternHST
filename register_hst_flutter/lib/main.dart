import 'package:flutter/material.dart';
import 'package:register_hst_flutter/feature/singup/constants/color_constants.dart';
import 'package:register_hst_flutter/feature/singup/signup_view.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData.light(useMaterial3: false),
    home: SingupView(),
  ));
}
//.copyWith(colorScheme: ColorScheme(brightness: Brightness.light, primary: ColorConstants.bgBottomNavBarColor, onPrimary: Colors.white, secondary: Colors.yellow, onSecondary: Colors.blue, error: Colors.brown, onError: Colors.deepPurple, surface: ColorConstants.bgBottomNavBarColor, onSurface: ColorConstants.textFieldFillColor, onSurfaceVariant: ColorConstants.borderColor))
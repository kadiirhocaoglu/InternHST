import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomAppbar extends AppBar{
  CustomAppbar._privateConstructor();
  
  static final CustomAppbar shared = CustomAppbar._privateConstructor();

  AppBar StarterAppBar(BuildContext context){
    AppBar appBar  = AppBar(
      actions: [
        
      ],
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      automaticallyImplyLeading: false,
    );
    return appBar;
  }

}
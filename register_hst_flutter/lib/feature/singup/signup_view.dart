import 'package:flutter/material.dart';
import 'package:register_hst_flutter/feature/singup/signup_keys.dart';
import 'package:register_hst_flutter/feature/singup/signup_padding.dart';

part './widget/signup_text_field.dart';
part  'widget/signup_header_title.dart'; 


  final class SingupView extends StatefulWidget {
    const SingupView({super.key});
  
    @override
    State<SingupView> createState() => _SingupViewState();
  }
  
  class _SingupViewState extends State<SingupView> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          leading: BackButton(),
          automaticallyImplyLeading: false,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.horizontal(left: Radius.circular(20.0), right: Radius.circular(20.0)))),
        body: SingleChildScrollView(
          child:Padding(
            padding: SignupPadding.medium.paddingHorizontal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _HeaderTitle(),
                Column(
                  children: [
                    _SingupTextField()
                  ],
                )
              ],
            ),
          ) ,
        ),
      );
    }
  }



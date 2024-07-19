import 'package:register_hst_flutter/feature/singup/signup_view.dart';
import 'package:flutter/material.dart';

mixin SignupMixin on State<SingupView> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController surnameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  final TextEditingController webSiteController = TextEditingController();


  @override
  void dispose() {
    nameController.dispose();
    surnameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  } 

}
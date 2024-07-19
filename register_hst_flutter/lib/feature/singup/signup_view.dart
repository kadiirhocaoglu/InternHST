import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:register_hst_flutter/feature/singup/signup_keys.dart';
import 'package:register_hst_flutter/feature/singup/signup_mixin.dart';
import 'package:register_hst_flutter/feature/singup/signup_padding.dart';
part './widget/signup_text_field.dart';
part 'widget/signup_header_title.dart';

final class SingupView extends StatefulWidget {
  const SingupView({super.key});

  @override
  State<SingupView> createState() => _SingupViewState();
}

class _SingupViewState extends State<SingupView> with SignupMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: BackButton(),
          automaticallyImplyLeading: false,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(20.0), right: Radius.circular(20.0)))),
      body: SingleChildScrollView(
        child: Padding(
          padding: SignupPadding.medium.paddingHorizontal,
          child: Column(
  
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _HeaderTitle(),
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: _SingupTextField(
                            title: SingupKeys.nameTextFieldTitle,
                            controller: nameController),
                      ),
                      Expanded(
                        child: _SingupTextField(
                            title: SingupKeys.surnameTextFieldTitle,
                            controller: surnameController),
                      ),
                    ],
                  ),
                  _SingupTextField(
                      title: SingupKeys.emailTextFieldTitle,
                      controller: emailController),
                  _SingupTextField(
                      title: SingupKeys.passwordTextFieldTitle,
                      controller: passwordController),
                  CheckboxListTile(
                    value: true,
                    onChanged: (value) {},
                    title: Text(
                      "Üyelik Sözleşmesini ve Kullanım Şartlarını kabul ediyorum",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      child: DecoratedBox(
                        decoration: BoxDecoration(),
                        child: Center(
                          child: Text("Kayıt Ol"),
                        ),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

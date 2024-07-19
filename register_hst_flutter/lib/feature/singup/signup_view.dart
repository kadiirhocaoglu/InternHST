import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:register_hst_flutter/feature/singup/color_constants.dart';
import 'package:register_hst_flutter/feature/singup/signup_keys.dart';
import 'package:register_hst_flutter/feature/singup/signup_mixin.dart';
import 'package:register_hst_flutter/feature/singup/signup_size_constants.dart';
part './widget/signup_text_field.dart';
part 'widget/signup_header_title.dart';
part 'widget/signup_button.dart';

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
        toolbarHeight: 100,
        leading: BackButton(),
        automaticallyImplyLeading: false,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: SignupSizeConstants.medium.radiusCircular, bottomRight: SignupSizeConstants.medium.radiusCircular)),
        flexibleSpace: Container(
          decoration: BoxDecoration(gradient: LinearGradient(colors: [ColorConstants.gradientStartColor, ColorConstants.gradientEndColor]),borderRadius: BorderRadius.only(bottomLeft: SignupSizeConstants.medium.radiusCircular, bottomRight: SignupSizeConstants.medium.radiusCircular),),
          
        ),
        title: Row(mainAxisAlignment: MainAxisAlignment.center,children: [Text("HST", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30)), Padding(
          padding: EdgeInsets.only(left: SignupSizeConstants.verylow.value),
          child: Text("POS", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w100, fontSize: 30,)))],),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: SignupSizeConstants.medium.paddingHorizontal,
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
                        child: Padding(
                          padding: EdgeInsets.only(right: SignupSizeConstants.verylow.value),
                          child: _SingupTextField(
                              title: SignupKeys.nameTextFieldTitle,
                              controller: nameController),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: SignupSizeConstants.verylow.value),
                          child: _SingupTextField(
                              title: SignupKeys.surnameTextFieldTitle,
                              controller: surnameController),
                        ),
                      ),
                    ],
                  ),
                  _SingupTextField(
                      title: SignupKeys.emailTextFieldTitle,
                      controller: emailController),
                  _SingupTextField(
                      title: SignupKeys.numberTextFieldTitle,
                      controller: numberController),
                      _SingupTextField(
                      title: SignupKeys.webSiteTextFieldTitle,
                      controller: webSiteController),
                      _SingupTextField(
                      title: SignupKeys.passwordTextFieldTitle,
                      controller: passwordController),
                  Padding(
                    padding: SignupSizeConstants.verylow.paddingHorizontal,
                    child: CheckboxListTile(
                      contentPadding: EdgeInsets.zero,
                      value: true,
                      onChanged: (value) {},
                      title: Text(
                        SignupKeys.signupTermsText,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ),
                  ),
                  _SignupButton()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

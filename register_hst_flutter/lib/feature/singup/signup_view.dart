import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:register_hst_flutter/feature/singup/constants/color_constants.dart';
import 'package:register_hst_flutter/feature/singup/constants/signup_keys.dart';
import 'package:register_hst_flutter/feature/singup/signup_mixin.dart';
import 'package:register_hst_flutter/feature/singup/constants/signup_size_constants.dart';
import 'package:register_hst_flutter/feature/singup/widgets/singup_check_box.dart';
part 'widgets/signup_text_field.dart';
part 'widgets/signup_header_title.dart';
part 'widgets/signup_button.dart';
part 'widgets/singup_already_signin.dart';
part 'widgets/terms_conditions_bottom_sheet.dart';

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
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: SignupSizeConstants.medium.radiusCircular,
                bottomRight: SignupSizeConstants.medium.radiusCircular)),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              ColorConstants.gradientStartColor,
              ColorConstants.gradientEndColor
            ]),
            borderRadius: BorderRadius.only(
                bottomLeft: SignupSizeConstants.medium.radiusCircular,
                bottomRight: SignupSizeConstants.medium.radiusCircular),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("HST",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30)),
            Padding(
                padding:
                    EdgeInsets.only(left: SignupSizeConstants.verylow.value),
                child: Text("POS",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w100,
                      fontSize: 30,
                    )))
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
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
                          padding: EdgeInsets.only(
                              right: SignupSizeConstants.verylow.value),
                          child: _SingupTextField(
                              title: SignupKeys.nameTextFieldTitle,
                              controller: nameController),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: SignupSizeConstants.verylow.value),
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
                      controller: passwordController,
                      obscureText: true),
                  Padding(
                    padding: SignupSizeConstants.verylow.paddingHorizontal,
                    child: SignupCheckBox(),
                  ),
                  _SignupButton(),
                  _SignupAlreadySignin()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

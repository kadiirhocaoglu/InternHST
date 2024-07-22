import 'package:flutter/material.dart';
import 'package:register_hst_flutter/feature/singup/constants/signup_keys.dart';
import 'package:register_hst_flutter/feature/singup/signup_view.dart';

class SignupCheckBox extends StatefulWidget {
  @override
  _SignupCheckBoxState createState() => _SignupCheckBoxState();
}

class _SignupCheckBoxState extends State<SignupCheckBox> {
  bool? value = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () async {
            value = await TermsConditionsBottomSheet.show(context);
            setState(() {}); 
          },
          icon: Icon(
            value ?? false ? Icons.square : Icons.square_outlined,
          ),
        ),
        Expanded(
          child: Text(
            SignupKeys.signupTermsText,
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ),
      ],
    );
  }
}

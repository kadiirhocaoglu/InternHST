part of '../signup_view.dart';

final class SignupCheckBox extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(value: true, onChanged: (value) => (){
        
        },
        materialTapTargetSize: MaterialTapTargetSize.padded
        ,
        activeColor: ColorConstants.positiveColor,
        ),
        Expanded(
          child: Text(
            SignupKeys.signupTermsText,
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ),
    
      ]
    );
  }
}

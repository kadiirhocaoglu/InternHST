part of '../signup_view.dart';



final class _SignupAlreadySignin extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: SignupSizeConstants.low.paddingHorizontal,
      child: Text.rich(TextSpan(
        text: SignupKeys.needHelp,
        children: [
          TextSpan(
            text: SignupKeys.support,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(color: ColorConstants.positiveColor, decoration: TextDecoration.underline, decorationColor: ColorConstants.positiveColor),
            onEnter: (event) => (){
              debugPrint("kadir");
            },
          )
        ] 
      )),
    );
  }
}

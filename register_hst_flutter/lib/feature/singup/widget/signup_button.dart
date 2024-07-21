part of '../signup_view.dart';


final class _SignupButton extends StatelessWidget {
  const _SignupButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(      
        onTap: () {},
        child: SizedBox(
          height: SignupSizeConstants.normalButtonHeight.value,
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [ColorConstants.gradientStartColor, ColorConstants.gradientEndColor]),
              borderRadius: BorderRadius.all(SignupSizeConstants.verylow.radiusCircular)
            ),
            child: Center(
              child: Text(SignupKeys.signupButtonTitle, style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: ColorConstants.darkGradientOnTextColor)),
            ),
          ),
        ));
  }
}

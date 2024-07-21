part of '../signup_view.dart';


final class _HeaderTitle extends StatelessWidget {
   
    @override
    Widget build(BuildContext context) {
      return Padding(
        padding: EdgeInsets.only(top: SignupSizeConstants.verylow.value),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(SignupKeys.headerTitle, style: Theme.of(context).textTheme.titleLarge,),
            Padding(
              padding: EdgeInsets.only(top: SignupSizeConstants.verylow.value),
              child: Text(SignupKeys.headerSubtitle, style: Theme.of(context).textTheme.titleSmall),
            )
          ],
        ),
      );
    }
  }
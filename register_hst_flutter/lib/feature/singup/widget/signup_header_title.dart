part of '../signup_view.dart';


  class _HeaderTitle extends StatelessWidget {
   
    @override
    Widget build(BuildContext context) {
      return Padding(
        padding: EdgeInsets.only(top: SignupPadding.verylow.value),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(SingupKeys.headerTitle, style: Theme.of(context).textTheme.titleLarge,),
            Padding(
              padding: EdgeInsets.only(top: SignupPadding.verylow.value),
              child: Text(SingupKeys.headerSubtitle, style: Theme.of(context).textTheme.titleSmall),
            )
          ],
        ),
      );
    }
  }
part of '../signup_view.dart';

class TermsConditionsBottomSheet extends StatelessWidget {
  const TermsConditionsBottomSheet({super.key});

  static Future<bool?> show(BuildContext context) {
  return showModalBottomSheet(context:context,
    builder: (BuildContext context){
    return const TermsConditionsBottomSheet();
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(

      
      child: Padding(
        padding: SignupSizeConstants.medium.padding,
        child: ListView(
          children: [
            Text(SingupKeysExt.termsConditionsTitle, style: Theme.of(context).textTheme.headlineMedium,),
            Text(SingupKeysExt.termsConditionsText, style: Theme.of(context).textTheme.bodyMedium,),
            ElevatedButton(onPressed: (){
              Navigator.pop(context, true);
            },
            style: ElevatedButton.styleFrom(backgroundColor: ColorConstants.gradientEndColor) 
            ,child: Text(SignupKeys.agreeTerms),) 
          ],
        ),
      ),
    );
  }
}
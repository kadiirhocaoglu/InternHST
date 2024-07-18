part of '../signup_view.dart';

class _SingupTextField extends StatelessWidget {
  _SingupTextField(String title);

  String? title = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: SignupPadding.verylow.value),
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    
          ),
        ),
      ) 
    ],
    );
  }
}

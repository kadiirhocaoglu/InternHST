part of '../signup_view.dart';

class _SingupTextField extends StatelessWidget {
  _SingupTextField();


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
            ),
            label: Text("Isım"),
            hintText: "Merhaba"
            

          ),
        ) 
    ],
    );
  }
}

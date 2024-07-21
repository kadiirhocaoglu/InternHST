import 'package:flutter/material.dart';

class TextBottomSheet extends StatelessWidget {
  const TextBottomSheet({super.key});

  static Future<bool?> show(BuildContext context) {
  return showModalBottomSheet(context:context,
    builder: (BuildContext context){
    return const TextBottomSheet();
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Lütfen okuyup onaylayınız"*20),
        TextButton(onPressed: (){
          Navigator.pop(context, true);
        }, child: Text("Okudum, Onayladım."))
      ],
    );
  }
}
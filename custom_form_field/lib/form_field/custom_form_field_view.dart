import 'package:custom_form_field/form_field/custom_form_field_mixin.dart';
import 'package:custom_form_field/form_field/custom_validator.dart';
import 'package:custom_form_field/form_field/sheet_form_field.dart';
import 'package:flutter/material.dart';


class CustomFormField extends StatefulWidget {
  const CustomFormField({super.key});

  @override
  State<CustomFormField> createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> with CustomFormViewdMixin{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("CustomFormField"),),
      body: Form(
        key: customFormKey,
        onChanged: onFormChange ,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            TextFormField(
              validator: (String? value) => CustomValidator(value: value).emptyCheck,
              decoration: InputDecoration(
                labelText: "Name"
               ),
            ),
             TextFormField(
              validator: (String? value) => CustomValidator(value: value).emptyCheck,
              decoration: InputDecoration(
                labelText: "Surname"
               ),
            ),
            SheetFormField(),
            ValueListenableBuilder<bool>(
              valueListenable:  formValidateNotifier,
              builder: (context, value, child)  { 
                return ElevatedButton(onPressed: !value ? null : (){
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Form valid")));
                },
                
                 child: Text("Submit")
                 );
              }
            )
          ],),
        ),
      ),
    );
  }
}


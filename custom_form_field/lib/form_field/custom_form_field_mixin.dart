
import 'package:custom_form_field/form_field/custom_form_field_view.dart';
import 'package:flutter/material.dart';

mixin CustomFormViewdMixin on State<CustomFormField> {
  final GlobalKey<FormState> customFormKey = GlobalKey<FormState>();
  final ValueNotifier<bool> formValidateNotifier  = ValueNotifier<bool>(false);


  void onFormChange(){
    formValidateNotifier.value = customFormKey.currentState?.validate() ?? false;
  }

}
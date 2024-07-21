import 'package:flutter/material.dart';
import 'package:custom_form_field/form_field/text_bottom_sheet.dart';

class SheetFormField extends FormField<bool> {
  SheetFormField({
    super.key,
  }) : super(
          validator: (bool? value) => value ?? false ? null : '',
          builder: (FormFieldState<bool> state) {
            return Row(
              children: [
                Expanded(
                  child: IconButton(
                    icon: Icon(
                      state.value ?? false
                          ? Icons.square
                          : Icons.square_outlined,
                    ),
                    onPressed: () async {
                      if (state.isValid) return;

                      final response = await TextBottomSheet.show(state.context);
                      state.didChange(response ?? false);
                    },
                  ),
                ),
                Expanded(child: Text("Agree to terms and conditions."))
              ],
            );
          },
        );
}

import 'package:flutter/material.dart';

class TodoListField extends StatelessWidget {
  final String label;
  final bool iconEye;
  final IconButton? suffixIconButton;
  final ValueNotifier<bool> obscureTextVN;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  TodoListField(
      {Key? key,
      required this.label,
      this.iconEye = false,
      this.suffixIconButton,
      this.controller,
      this.validator})
      : assert(iconEye == true ? suffixIconButton == null : true,
            'ObscureText não pode ser enviado junto ao suffixIconButton'),
        obscureTextVN = ValueNotifier(iconEye),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: obscureTextVN,
      builder: (_, obscureTextValue, child) {
        return TextFormField(
          controller: controller,
          validator: validator,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: Colors.red),
            ),
            labelText: label,
            labelStyle: const TextStyle(
              fontSize: 15,
              color: Colors.black,
            ),
            isDense: true,
            suffixIcon: suffixIconButton ??
                (iconEye == true
                    ? IconButton(
                        onPressed: () {
                          obscureTextVN.value = !obscureTextValue;
                        },
                        icon: Icon(obscureTextValue
                            ? Icons.visibility
                            : Icons.visibility_off),
                      )
                    : null),
          ),
          obscureText: obscureTextValue,
        );
      },
    );
  }
}

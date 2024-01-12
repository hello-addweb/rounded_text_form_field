/// Documentation
///
/// rounded_text_form_field library collection.
library rounded_text_form_field;

import 'package:flutter/material.dart';

///
/// RoundedTextFormField main class..
class RoundedTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool isObscure;
  final String? Function(String?)? validator;
  final bool isPhoneNumber;
  final bool enabled;
  final bool readOnly;
  final VoidCallback? onPressed;
  final TextInputAction textInputAction;
  final int maxLines;
  const RoundedTextFormField(
      {super.key,
      required this.controller,
      required this.hintText,
      this.validator,
      this.isObscure = false,
      required this.textInputAction,
      this.isPhoneNumber = false,
      this.enabled = true,
      this.readOnly = false,
      this.maxLines = 1,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
      controller: controller,
      enabled: enabled,
      readOnly: readOnly,
      onTap: onPressed,
      maxLines: maxLines,
      maxLength: isPhoneNumber ? 10 : 200,
      obscureText: isObscure,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        counterText: '',
        hintText: hintText,
        filled: true,
        fillColor: Colors.white,
        hintStyle: const TextStyle(
            fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),
        isDense: true, // Added this
        contentPadding: const EdgeInsets.all(16), // Added this
        // label: Text(label),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: Colors.grey),
            borderRadius: BorderRadius.circular(8)),
        disabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: Colors.grey),
            borderRadius: BorderRadius.circular(8)),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: Colors.grey),
            borderRadius: BorderRadius.circular(8)),
      ),
      validator: validator,
      textInputAction: textInputAction,
      keyboardType: isPhoneNumber
          ? TextInputType.phone
          : maxLines != 1
              ? TextInputType.text
              : TextInputType.multiline,
    );
  }
}

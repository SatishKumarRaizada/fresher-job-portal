import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String hintText;
  final Function onChange;
  final Widget? prefixWidget;
  final Widget? suffixWidget;
  final TextEditingController? textFieldController;
  final Function? suffixTap;
  final Function? validateTextField;
  final bool isSecure;
  final int lineHeight;
  final bool isEnabled;
  final bool isDense;
  final TextInputType keyboardType;
  final int maxlength;

  const AppTextField({
    Key? key,
    required this.hintText,
    required this.onChange,
    this.prefixWidget,
    this.suffixWidget,
    this.textFieldController,
    this.suffixTap,
    this.validateTextField,
    this.isSecure = false,
    this.lineHeight = 1,
    this.isEnabled = true,
    this.keyboardType = TextInputType.text,
    this.maxlength = 5000,
    this.isDense = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textFieldController,
      obscureText: isSecure,
      maxLines: lineHeight,
      enabled: isEnabled,
      keyboardType: keyboardType,
      maxLength: maxlength,
      decoration: InputDecoration(
        isDense: isDense,
        hintText: hintText,
        prefixIcon: prefixWidget,
        suffixIcon: suffixWidget,
        counterText: '',
      ),
      onChanged: (String str) {
        onChange(str);
      },
      validator: (String? value) {
        return validateTextField!(value);
      },
      onEditingComplete: () {
        FocusScope.of(context).unfocus();
      },
    );
  }
}

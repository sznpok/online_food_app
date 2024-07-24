import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:online_food_project/core/themes/theme.dart';

class CustomTextfield extends StatelessWidget {
  final String? hintText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final bool obscure;
  final Widget? prefixIcon;
  final Widget? sufixIcon;
  final Function? onTap;
  final bool? readOnly;
  final int? maxLines;
  final int? maxLength;
  final TextStyle? labelStyle;
 // final FocusNode? focusNode;

  const CustomTextfield({
    super.key,
    this.hintText,
    this.labelStyle,
    this.controller,
    this.validator,
    this.keyboardType,
    this.obscure = false,
    this.prefixIcon,
    this.sufixIcon,
    this.readOnly = false,
    this.maxLines,
    this.maxLength = 500,
    this.onTap, 
   // this.focusNode,
  });



  @override
  Widget build(BuildContext context) {
    return TextFormField(
     // focusNode: focusNode,
      cursorColor: Colors.black38,
      obscureText: obscure,
      keyboardType: keyboardType,
      controller: controller,
      readOnly: readOnly!,
      onTap: onTap != null ? () => onTap!() : null,
      inputFormatters: [LengthLimitingTextInputFormatter(maxLength)],
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: sufixIcon,
        alignLabelWithHint: true,
        filled: true,
        labelStyle: labelStyle,
        fillColor: primaryColor,
        contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
        hintText: hintText,
        enabled: true,
        // border: OutlineInputBorder(
        //   borderSide: BorderSide(width: 2),
        // )
      ),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validator,
    );
  }
}
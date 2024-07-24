import 'dart:ffi';

import 'package:flutter/material.dart';

import '../../core/themes/theme.dart';

class CustomButton extends StatefulWidget {
  final String ButtonName;
  final Color bgColor;
  final Color txtColor;
  final double? height;
  final double? width;
  VoidCallback? onPressed;
   CustomButton(
      {super.key,
      required this.ButtonName,
      required this.bgColor,
      required this.txtColor,
      required this.height,
      required this.width,
      this.onPressed,
      });

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
            color: widget.bgColor, borderRadius: BorderRadius.circular(3)),
        child: Center(
          child: Text(
            widget.ButtonName,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: widget.txtColor),
          ),
        ),
      ),
    );
  }
}

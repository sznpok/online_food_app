import 'package:flutter/material.dart';

import '../../core/themes/size.dart';
import '../../core/themes/theme.dart';

class CustomCircularButton extends StatelessWidget {
  final String buttonName;
  final VoidCallback onPressed;
  const CustomCircularButton({super.key, required this.buttonName, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 55,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(58),
        ),
        child: Center(
          child: Text(
            buttonName,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: primaryColor,
                  fontSize: 25,
                ),
          ),
        ),
      ),
    );
  }
}

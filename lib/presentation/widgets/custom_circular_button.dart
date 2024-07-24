import 'package:flutter/material.dart';

import '../../core/themes/size.dart';
import '../../core/themes/theme.dart';

class CustomCircularButton extends StatefulWidget {
  final String buttonName;
  const CustomCircularButton({super.key, required this.buttonName});

  @override
  State<CustomCircularButton> createState() => _CustomCircularButtonState();
}

class _CustomCircularButtonState extends State<CustomCircularButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: SizeConfig.screenWidth,
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(58),
      ),
      child: Center(
        child: Text(
         widget.buttonName,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: primaryColor,
                fontSize: 25,
              ),
        ),
      ),
    );
  }
}

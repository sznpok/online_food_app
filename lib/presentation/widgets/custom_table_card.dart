import 'package:flutter/material.dart';

class CustomTableCard extends StatelessWidget {
  final String tableName;
  const CustomTableCard({super.key, required this.tableName});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/Group.png",
          //color: Color(0xff797B7E),
          height: 140,
          width: 140,
        ),
        Positioned(
            top: 50,
            bottom: 50,
            left: 50,
            right: 50,
            child: Text(
              tableName,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontSize: 25,
                  color: Color(0xffA2774C),
                  fontWeight: FontWeight.w500),
            )),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class CustomTableCard extends StatefulWidget {
  const CustomTableCard({super.key});

  @override
  State<CustomTableCard> createState() => _CustomTableCardState();
}

class _CustomTableCardState extends State<CustomTableCard> {
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
              "T1",
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontSize: 25,
                  color: Color(0xffA2774C),
                  fontWeight: FontWeight.w500),
            )),
      ],
    );
  }
}

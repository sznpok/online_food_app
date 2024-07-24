import 'package:flutter/material.dart';

import '../../core/themes/size.dart';
import '../../core/themes/theme.dart';

class CustomMenuCard extends StatefulWidget {
  const CustomMenuCard({super.key});

  @override
  State<CustomMenuCard> createState() => _CustomMenuCardState();
}

class _CustomMenuCardState extends State<CustomMenuCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175,
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15)),
            child: Image.asset(
              "assets/images/img.png",
              height: 123,
              width: 175,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: SizeConfig.screenHeight! * 0.01,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              "FRENCH FRIES",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 17, color: blackColor, fontWeight: FontWeight.w500),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "CATEGORY:",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 12,
                      color: blackColor,
                      fontWeight: FontWeight.w500),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 204, 140, 45),
                  child: Center(
                    child: Text(
                      "G",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: 14,
                          color: primaryColor,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

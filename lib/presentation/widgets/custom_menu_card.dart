import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../core/themes/size.dart';
import '../../core/themes/theme.dart';

class CustomMenuCard extends StatefulWidget {
  const CustomMenuCard(
      {super.key, this.title, this.category, this.price, this.image});

  final String? title;
  final String? category;
  final String? price;
  final String? image;

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
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              child: CachedNetworkImage(
                imageUrl: widget.image ?? "",
                height: 123,
                width: 175,
                errorWidget: (context, string, _) {
                  return Icon(
                    Icons.image,
                  );
                },
                placeholder: (context, str) {
                  return Icon(
                    Icons.image,
                  );
                },
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: SizeConfig.screenHeight! * 0.01,
            ),
            Text(
              widget.title ?? "",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 17, color: blackColor, fontWeight: FontWeight.w500),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Row(
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
            Text("Price: ${widget.price ?? "0.0"}"),
          ],
        ),
      ),
    );
  }
}

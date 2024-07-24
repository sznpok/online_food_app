import 'package:flutter/material.dart';

import '../../core/themes/size.dart';
import '../../core/themes/theme.dart';

class CustomOrderCard extends StatefulWidget {
  const CustomOrderCard({super.key});

  @override
  State<CustomOrderCard> createState() => _CustomOrderCardState();
}

class _CustomOrderCardState extends State<CustomOrderCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(9),
          border: Border.all(width: 1, color: Color(0xff797B7E))),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Order #351",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 16,
                        color: blackColor,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "05 Feb 2023, 08:28 PM",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 14,
                        color: Color(0xff797B7E),
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/image 3.png"),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage(
                  "assets/images/images 1.png",
                ),
              ),
              SizedBox(
                width: SizeConfig.screenWidth! * 0.05,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Vegetable Mixups",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 16,
                        color: blackColor,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "Vegetable Fritters with Egg",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 14,
                        color: Color(0xff797B7E),
                        fontWeight: FontWeight.w400),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "520",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 14,
                            color: blackColor,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Qty: 1",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 15,
                            color: blackColor,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: SizeConfig.screenHeight! * 0.05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage(
                  "assets/images/images 1.png",
                ),
              ),
              SizedBox(
                width: SizeConfig.screenWidth! * 0.05,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Vegetable Mixups",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 16,
                        color: blackColor,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "Vegetable Fritters with Egg",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 14,
                        color: Color(0xff797B7E),
                        fontWeight: FontWeight.w400),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "520",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 14,
                            color: blackColor,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Qty: 1",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 15,
                            color: blackColor,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: SizeConfig.screenHeight! * 0.01,
          ),
          Divider(),
          SizedBox(
            height: SizeConfig.screenHeight! * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "X2 Items",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 14,
                    color: Color(0xff797B7E),
                    fontWeight: FontWeight.w400),
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: 1,
                          color: Color(0xffDB79A9),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.cancel, color: Color(0xffDB79A9)),
                    ),
                  ),
                  SizedBox(
                    width: SizeConfig.screenWidth! * 0.05,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: 1,
                          color: Color(0xffDB79A9),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.cancel, color: Color(0xffDB79A9)),
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.screenHeight! * 0.05,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

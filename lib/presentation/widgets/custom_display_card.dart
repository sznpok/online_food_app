import 'package:flutter/material.dart';

import '../../core/themes/size.dart';
import '../../core/themes/theme.dart';
import 'custom_button.dart';

class CustomDisplayCard extends StatefulWidget {
  const CustomDisplayCard({super.key});

  @override
  State<CustomDisplayCard> createState() => _CustomDisplayCardState();
}

class _CustomDisplayCardState extends State<CustomDisplayCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: primaryColor,
      child: Container(
        padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: 9,
                width: 69,
                decoration: BoxDecoration(
                    color: Color(0xffFF7979),
                    borderRadius: BorderRadius.circular(10))),
            SizedBox(
              height: SizeConfig.screenHeight! * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Order 1",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: blackColor),
                    ),
                    Text(
                      "Order time: 3:10",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: blackColor),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Table 3.4",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: blackColor),
                    ),
                    Text(
                      "Estimate: 20 min",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: blackColor),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.screenHeight! * 0.04,
            ),
            Text(
              "1 Wild Thing",
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontSize: 24, fontWeight: FontWeight.w400, color: blackColor),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "No mayo",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: blackColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "No Pickles",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: blackColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Add Dripping Cheese",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: blackColor),
              ),
            ),
            Text(
              "1 Tenders with 2 dips",
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontSize: 24, fontWeight: FontWeight.w400, color: blackColor),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Ketchup",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: blackColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "BBQ",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: blackColor),
              ),
            ),
            Text(
              "1 Regular Fries",
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontSize: 24, fontWeight: FontWeight.w400, color: blackColor),
            ),
            SizedBox(
              height: SizeConfig.screenHeight! * 0.15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                  ButtonName: "Spike",
                  bgColor: Color(0xff1AD285),
                  txtColor: primaryColor,
                  height: 34,
                  width: 116,
                ),
                CustomButton(
                  ButtonName: "Push",
                  bgColor: Color(0xffFF7979),
                  txtColor: primaryColor,
                  height: 34,
                  width: 116,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

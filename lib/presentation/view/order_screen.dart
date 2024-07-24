import 'package:flutter/material.dart';
import 'package:online_food_project/core/themes/size.dart';
import 'package:online_food_project/core/themes/theme.dart';
import 'package:online_food_project/presentation/widgets/custom_order_card.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
          toolbarHeight: 90,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset("assets/images/restro tech 1.png",
        height: 82,
        width: 80,
        ),
        Icon(Icons.menu, color: blackColor,size: 35,)
      ],
    ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8, right: 10, bottom: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(),
            Text(
              "Order List",
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontSize: 20, fontWeight: FontWeight.w400, color: blackColor),
            ),
             SizedBox(
                    width: SizeConfig.screenWidth! * 0.01,
                  ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  OrderButtonWidget(
                    buttonNum: "345",
                    borderColor: Color(0xff87B6A1),
                    icon: Icons.check,
                    iconColor: Color(0xff87B6A1),
                    txtColor: Color(0xff87B6A1),
                  ),
                  SizedBox(
                    width: SizeConfig.screenWidth! * 0.015,
                  ),
                  OrderButtonWidget(
                    buttonNum: "346",
                    borderColor: Color(0xffE4A2B0),
                    icon: Icons.close,
                    iconColor: Color(0xffE4A2B0),
                    txtColor: Color(0xffE4A2B0),
                  ),
                  SizedBox(
                    width: SizeConfig.screenWidth! * 0.015,
                  ),
                  OrderButtonWidget(
                    buttonNum: "34",
                    borderColor: Color(0xff87B6A1),
                    icon: Icons.check,
                    iconColor: Color(0xff87B6A1),
                    txtColor: Color(0xff87B6A1),
                  ),
                  SizedBox(
                    width: SizeConfig.screenWidth! * 0.015,
                  ),
                  OrderButtonWidget(
                    buttonNum: "348",
                    borderColor: Color(0xff87B6A1),
                    icon: Icons.check,
                    iconColor: Color(0xff87B6A1),
                    txtColor: Color(0xff87B6A1),
                  ),
                  SizedBox(
                    width: SizeConfig.screenWidth! * 0.015,
                  ),
                  OrderButtonWidget(
                    buttonNum: "343",
                    borderColor: Color(0xff87B6A1),
                    icon: Icons.check,
                    iconColor: Color(0xff87B6A1),
                    txtColor: Color(0xff87B6A1),
                  ),
                ],
              ),
            ),
             SizedBox(
                    width: SizeConfig.screenWidth! * 0.015,
                  ),
            Expanded(child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                child: CustomOrderCard(),
              );
            })),
          ],
        ),
      ),
    );
  }
}

//******************** */

class OrderButtonWidget extends StatelessWidget {
  final String buttonNum;
  final Color txtColor;
  final IconData icon;
  final Color iconColor;
  final Color borderColor;
  const OrderButtonWidget(
      {super.key,
      required this.buttonNum,
      required this.txtColor,
      required this.icon,
      required this.iconColor,
      required this.borderColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 1,
            color: borderColor,
          )),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Icon(icon, color: iconColor),
            Text(
              "#$buttonNum",
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontSize: 16, fontWeight: FontWeight.w400, color: txtColor),
            ),
          ],
        ),
      ),
    );
  }
}

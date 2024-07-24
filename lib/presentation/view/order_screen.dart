import 'package:flutter/material.dart';
import 'package:online_food_project/core/themes/theme.dart';

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
      appBar: AppBar(),

      body: Column(
        children: [
          Divider(),
          Text("Order List",
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 20, fontWeight: FontWeight.w400, color: blackColor),
          ),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
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
                      child: Row(
                        children: [
                          Icon(Icons.close, color: Color(0xffDB79A9)),

                          Text("#346",
                          style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xffDB79A9)),
                          ),
                        ],
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
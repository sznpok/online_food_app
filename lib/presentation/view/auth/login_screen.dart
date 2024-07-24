import 'package:flutter/material.dart';
import 'package:online_food_project/core/themes/size.dart';
import 'package:online_food_project/core/themes/theme.dart';

import '../../widgets/custom_circular_button.dart';
import '../../widgets/custom_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(),

      body: Column(
        children: [
          CustomTextfield(),


         CustomCircularButton(
          buttonName: "Running Oders",
         ),
         SizedBox(height: 20,),


        Container(
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(9),
            border: Border.all(
              width: 1,
              color: Color(0xff797B7E)
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Order #351",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 16, color: blackColor, fontWeight: FontWeight.w500),
                      ),
                      Text("05 Feb 2023, 08:28 PM",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 14, color: Color(0xff797B7E), fontWeight: FontWeight.w400),
                      ),
                     
                    ],
                  ),
                   CircleAvatar(
                        backgroundImage: AssetImage("assets/images/image 3.png"),
                      ),
                ],

              ),
            ],
          ),
        ),
        ],
      ),
    );
  }
}
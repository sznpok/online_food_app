import 'package:flutter/material.dart';
import 'package:online_food_project/core/themes/size.dart';
import 'package:online_food_project/core/themes/theme.dart';
import 'package:online_food_project/presentation/widgets/custom_display_card.dart';

class DisplayScreen extends StatefulWidget {
  const DisplayScreen({super.key});

  @override
  State<DisplayScreen> createState() => _DisplayScreenState();
}

class _DisplayScreenState extends State<DisplayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
       appBar: AppBar(
          toolbarHeight: 90,
    title: Row(
     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset("assets/images/restro tech 1.png",
        height: 82,
        width: 80,
        ),
        
        
      ],
    ),
    actions: [
      Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        height: 52,
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Icon(Icons.add_box_outlined, color: Color(0xff2C3832),),
            Text("ADD TABLE",
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xff2C3832)),
            ),
          ],
        ),
      ),
      SizedBox(width: 20,),
      Icon(Icons.menu, color: blackColor,size: 35,),
       SizedBox(width: 10,),
    ],
    
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/codepen.png",
                height: 45,
                width: 45,
              ),
              SizedBox(
                width: SizeConfig.screenWidth! * 0.03,
              ),
              Text(
                "Kitchen Display",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 36,
                    fontWeight: FontWeight.w400,
                    color: blackColor),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 9,
                  width: 69,
                  decoration: BoxDecoration(
                      color: Color(0xff1AD285),
                      borderRadius: BorderRadius.circular(10))),
              SizedBox(
                width: SizeConfig.screenWidth! * 0.03,
              ),
              Container(
                  height: 9,
                  width: 69,
                  decoration: BoxDecoration(
                      color: Color(0xff3998FF),
                      borderRadius: BorderRadius.circular(10))),
              SizedBox(
                width: SizeConfig.screenWidth! * 0.03,
              ),
              Container(
                  height: 9,
                  width: 69,
                  decoration: BoxDecoration(
                      color: Color(0xffFF7979),
                      borderRadius: BorderRadius.circular(10))),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                "Kitchen orders",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff797979)),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
              return CustomDisplayCard();
            }),
          ))
        ],
      ),
    );
  }
}

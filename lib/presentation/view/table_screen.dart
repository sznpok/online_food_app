import 'package:flutter/material.dart';
import 'package:online_food_project/core/themes/size.dart';
import 'package:online_food_project/core/themes/theme.dart';
import 'package:online_food_project/presentation/widgets/custom_button.dart';
import 'package:online_food_project/presentation/widgets/custom_table_card.dart';

class TableScreen extends StatefulWidget {
  const TableScreen({super.key});

  @override
  State<TableScreen> createState() => _TableScreenState();
}

class _TableScreenState extends State<TableScreen> {
  final List<String> tableList =[
    "T1",
    "T2",
    "T3",
    "T4",
    "T5",
    "T6",
    "T7",
    "T8",
    "T9",
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text("TABLE LIST",
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 30, fontWeight: FontWeight.w600, color: blackColor),
            ),
          ),
           SizedBox(height: SizeConfig.screenHeight!*0.025,),

          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                CustomButton(
                  ButtonName: "First Floor", 
                  bgColor: secondaryColor, 
                  txtColor: blackColor, 
                  height: 39.0, 
                  width: 112.0),
            
                  SizedBox(width: SizeConfig.screenWidth!*0.07,),
                  CustomButton(
                  ButtonName: "Second Floor", 
                  bgColor: Color(0xffFAFAFA), 
                  txtColor: Color(0xffD9D9D9), 
                  height: 39.0, 
                  width: 133.0)
              ],
            ),
          ),
           SizedBox(height: SizeConfig.screenHeight!*0.02,),
          Divider(),
           SizedBox(height: SizeConfig.screenHeight!*0.02,),

          Expanded(
            child: GridView.builder(
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      scrollDirection: Axis.vertical,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10.0,
                          mainAxisSpacing: 10.0,
                          mainAxisExtent: 150),
                      itemCount: tableList.length, // Number of items in the grid
                      itemBuilder: (context, index) {
                        return Container(
                          // width: 220,
                          child: CustomTableCard(
                            tableName: tableList[index],
                          ),
                        );
                      },
                    ),
            ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 140,
        color: Color(0xffEAF0F0),

        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: SizeConfig.screenHeight!*0.02,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Icon(Icons.table_bar),
                    SizedBox(width: SizeConfig.screenWidth!*0.02,),
                    Text("TABLE",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 15, fontWeight: FontWeight.w500, color: Color(0xff2C3832)),
                    ),
                     SizedBox(width: SizeConfig.screenWidth!*0.02,),
                    Text("1",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 23, fontWeight: FontWeight.w500, color: Color(0xffD89F65)),
                    ),
                  ],
                ),
                 SizedBox(width: SizeConfig.screenWidth!*0.1,),
                Row(
              children: [
                Icon(Icons.person_2),
                SizedBox(width: SizeConfig.screenWidth!*0.02,),
                Text("GUESS",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 15, fontWeight: FontWeight.w500, color: Color(0xff2C3832)),
                ),
                 SizedBox(width: SizeConfig.screenWidth!*0.02,),
                Text("2",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 23, fontWeight: FontWeight.w500, color: Color(0xffD89F65)),
                ),
              ],
            ),
              ],
            ),
            SizedBox(height: SizeConfig.screenHeight!*0.02,),

            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: CustomButton(
                ButtonName: "SELECT AND CONTINUE", 
                bgColor: Color(0xff4F970F), 
                txtColor: primaryColor, 
                height: 58.0, 
                width: 268.0
                ),
            )
             

          ],
        ),
      ),
    );
  }
}
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
    );
  }
}
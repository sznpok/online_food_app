import 'package:flutter/material.dart';
import 'package:online_food_project/core/themes/theme.dart';

class TableScreen extends StatefulWidget {
  const TableScreen({super.key});

  @override
  State<TableScreen> createState() => _TableScreenState();
}

class _TableScreenState extends State<TableScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text("TABLE LIST",
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 30, fontWeight: FontWeight.w600, color: blackColor),
          )
        ],
      ),
    );
  }
}
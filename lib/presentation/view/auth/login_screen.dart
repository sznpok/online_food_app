import 'package:flutter/material.dart';
import 'package:online_food_project/core/themes/size.dart';
import 'package:online_food_project/core/themes/theme.dart';

import '../../widgets/custom_button.dart';
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

          
        
        

       
        ],
      ),
    );
  }
}
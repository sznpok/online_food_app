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
      body: Container(
        
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/images 1.png"),
            fit: BoxFit.cover, // This ensures the image covers the entire background
          ),
        ),
        child: Center(
          child: Card(
            
            
            color: Colors.transparent,
            child: Container(
              width: SizeConfig.screenWidth!,
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("User Authentication",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 32, fontWeight: FontWeight.w600, color: primaryColor),
                  ),
                  SizedBox(height: 15,),
                   Text("Username",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 20, fontWeight: FontWeight.w500, color: primaryColor),
                  ),
                   SizedBox(height: 3,),
              
                  CustomTextfield(
                    hintText: "Enter username",
                  ),
                   SizedBox(height: 20,),
                    Text("Password",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 20, fontWeight: FontWeight.w500, color: primaryColor),
                  ),
                   SizedBox(height: 3,),
              
                  CustomTextfield(
                    hintText: "Enter password",
                  ),
                   SizedBox(height: 10,),
                   Text("Forgot Password?",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 20, fontWeight: FontWeight.w500, color: primaryColor),
                  ),
                   SizedBox(height: 10,),
              
                  CustomCircularButton(buttonName: "Running order"),
                   SizedBox(height: 25,),
                ],
              ),
            ),
          ),
        ),
       
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:online_food_project/core/themes/size.dart';
import 'package:online_food_project/core/themes/theme.dart';
import 'package:online_food_project/presentation/view/auth/login_screen.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_circular_button.dart';
import '../../widgets/custom_textfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _userNameController = TextEditingController();
  TextEditingController _mobileNoController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _userNameController.dispose();
    _passwordController.dispose();
    _mobileNoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/images 1.png"),
            fit: BoxFit
                .cover, // This ensures the image covers the entire background
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
                  Text(
                    "User Sign Up",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                        color: primaryColor),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Username",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: primaryColor),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  CustomTextfield(
                    hintText: "Enter username",
                    controller: _userNameController,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Mobile No.",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: primaryColor),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  CustomTextfield(
                    hintText: "Enter mobile no.",
                    controller: _mobileNoController,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Password",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: primaryColor),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  CustomTextfield(
                    hintText: "Enter password",
                    controller: _passwordController,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Forgot Password?",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: primaryColor),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomCircularButton(
                    buttonName: " Sign Up",
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => LoginScreen()));
                    },
                  ),
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

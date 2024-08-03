import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_food_project/bloc/user_register_bloc/user_register_bloc.dart';
import 'package:online_food_project/core/themes/size.dart';
import 'package:online_food_project/core/themes/theme.dart';
import 'package:online_food_project/presentation/view/auth/login_screen.dart';

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
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _userNameController.dispose();
    _passwordController.dispose();
    _emailController.dispose();
    _mobileNoController.dispose();
    _addressController.dispose();
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
          child: SingleChildScrollView(
            child: Card(
              color: Colors.transparent,
              child: Container(
                width: SizeConfig.screenWidth!,
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
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
                      height: 10,
                    ),
                    Text(
                      "Full Name",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: primaryColor),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    CustomTextfield(
                      hintText: "Enter full name",
                      controller: _userNameController,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Address",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: primaryColor),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    CustomTextfield(
                      hintText: "Enter your address",
                      controller: _addressController,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Mobile No.",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: primaryColor),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    CustomTextfield(
                      hintText: "Enter mobile no.",
                      controller: _mobileNoController,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Email",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: primaryColor),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    CustomTextfield(
                      hintText: "Enter email address",
                      controller: _emailController,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Password",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: primaryColor),
                    ),
                    SizedBox(
                      height: 5,
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
                    BlocConsumer<UserRegisterBloc, UserRegisterState>(
                      listener: (context, state) {
                        if (state is UserRegisterErrorState) {
                          showBottomSheet(
                              context: context,
                              builder: (context) {
                                return Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Center(
                                        child: CircleAvatar(
                                          backgroundColor: Colors.white,
                                          child: Icon(
                                            Icons.error,
                                            color: Colors.red,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Center(
                                        child: Text(
                                          "Error",
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.red,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Center(
                                        child: Text(
                                          state.error!,
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      CustomCircularButton(
                                        buttonName: "Ok",
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                      )
                                    ],
                                  ),
                                );
                              });
                        } else if (state is UserRegisterSuccessState) {
                          Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()),
                            (route) => false,
                          );
                        }
                      },
                      builder: (context, state) {
                        return CustomCircularButton(
                          buttonName: " Sign Up",
                          onPressed: () {
                            context.read<UserRegisterBloc>().add(
                                  OnRegisterEvent(
                                    name: _userNameController.text,
                                    email: _emailController.text,
                                    password: _passwordController.text.trim(),
                                    phoneNumber: int.parse(
                                        _mobileNoController.text.toString()),
                                    address: _addressController.text,
                                  ),
                                );
                          },
                          isLoading: state is UserRegisterLoadingState,
                        );
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        );
                      },
                      style: TextButton.styleFrom(
                        fixedSize: Size(SizeConfig.screenWidth!,
                            SizeConfig.screenHeight! * 0.01),
                        backgroundColor: Colors.transparent,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Login",
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge!
                                .copyWith(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: primaryColor),
                          ),
                          Icon(
                            Icons.login,
                            color: primaryColor,
                          ),
                        ],
                      ),
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
      ),
    );
  }
}

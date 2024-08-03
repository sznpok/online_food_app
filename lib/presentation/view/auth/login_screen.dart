import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_food_project/bloc/auth_visibility_bloc/auth_visibility_bloc.dart';
import 'package:online_food_project/bloc/user_login_bloc/user_login_bloc.dart';
import 'package:online_food_project/core/themes/size.dart';
import 'package:online_food_project/core/themes/theme.dart';

import '../../widgets/custom_circular_button.dart';
import '../../widgets/custom_textfield.dart';
import '../bottom_nav_bar_screeen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  void dispose() {
    _userNameController.dispose();
    _password.dispose();
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
                    "User Authentication",
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
                  Text(
                    "Password",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: primaryColor),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  BlocBuilder<AuthVisibilityBloc, AuthVisibilityState>(
                    builder: (context, state) {
                      return CustomTextfield(
                        hintText: "Enter password",
                        controller: _password,
                        obscure: !state.isVisible!,
                        sufixIcon: IconButton(
                          onPressed: () {
                            context
                                .read<AuthVisibilityBloc>()
                                .add(ToggleVisibility());
                          },
                          icon: state.isVisible!
                              ? Icon(Icons.visibility_off)
                              : Icon(Icons.visibility),
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Forgot Password?",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: primaryColor),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  BlocConsumer<UserLoginBloc, UserLoginState>(
                    listener: (context, state) {
                      if (state is UserLoginErrorState) {
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
                      } else if (state is UserLoginSuccessState) {
                        Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                              builder: (context) => const BottomNavBarScreen()),
                          (Route route) => false,
                        );
                      }
                    },
                    builder: (context, state) {
                      return CustomCircularButton(
                        buttonName: "Login",
                        onPressed: () {
                          log(_userNameController.text);
                          log(_password.text);
                          context.read<UserLoginBloc>().add(
                                OnUserLoginEvent(
                                  password: _password.text.trim(),
                                  email: _userNameController.text.trim(),
                                ),
                              );
                        },
                        isLoading: state is UserLoginLoadingState,
                      );
                    },
                  ),
                  const SizedBox(
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

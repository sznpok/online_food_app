import 'package:flutter/material.dart';
import 'package:online_food_project/constant/constant.dart';

import '../../constant/custom_storage.dart';
import 'auth/login_screen.dart';
import 'bottom_nav_bar_screeen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // _navigateToHomeScreen() async {

  //   Future.delayed(const Duration(seconds: 1)).then((value) =>
  //       Navigator.pushAndRemoveUntil(
  //           context,
  //           MaterialPageRoute(builder: (context) => const BottomNavBarScreen()),
  //           (route) => false));
  // }

  navigateScreen() async {
    String? accessToken = await readTokenAccess();
    if (accessToken != null && accessToken.isNotEmpty) {
      ApiToken.token = accessToken.toString();
    }
    if (accessToken != null) {
      Future.delayed(
        const Duration(seconds: 1),
        () {
          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => const BottomNavBarScreen()),
            (route) => false,
          );
        },
      );
    } else {
      Future.delayed(
        const Duration(seconds: 1),
        () {
          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => const LoginScreen()),
            (route) => false,
          );
        },
      );
    }
  }

  @override
  void initState() {
    navigateScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            //   child: Text("Digital Showroom",
            // style: Theme.of(context).textTheme.displaySmall!.copyWith(fontWeight: FontWeight.bold, color: errorColor),
            // ),

            child: Image.asset(
              "assets/images/foodlogo.jpg",
              height: 200,
              width: 200,
            ),
          ),
        ],
      ),
    );
  }
}



import 'package:flutter/material.dart';
import 'package:online_food_project/presentation/view/auth/sign_up_screen.dart';





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





  @override
  void initState() {
 //   _navigateToHomeScreen();
    super.initState();

    // Delayed navigation to the second screen
    Future.delayed(
      const Duration(seconds: 1),
      () {
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) =>  SignUpScreen()),
          (route) => false,
        );
      },
    );
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

          child: Image.asset("assets/images/foodlogo.jpg",
          height: 200,
          width: 200,
          ),
          ),
        ],
      ),
    );
  }
}
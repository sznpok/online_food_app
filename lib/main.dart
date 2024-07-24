import 'package:flutter/material.dart';
import 'package:online_food_project/presentation/view/auth/login_screen.dart';

import 'core/themes/size.dart';
import 'core/themes/theme.dart';
import 'presentation/view/auth/sign_up_screen.dart';
import 'presentation/view/display_screen.dart';
import 'presentation/view/menu_screen.dart';
import 'presentation/view/order_screen.dart';
import 'presentation/view/splash_screen.dart';
import 'presentation/view/table_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
     SizeConfig().init(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
   
     theme: theme(context),
      home:  SplashScreen(),
    );
  }
}


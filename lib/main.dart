import 'package:flutter/material.dart';
import 'package:online_food_project/presentation/view/auth/login_screen.dart';

import 'core/themes/size.dart';
import 'core/themes/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
     SizeConfig().init(context);
    return MaterialApp(
   
     theme: theme(context),
      home: const LoginScreen(),
    );
  }
}


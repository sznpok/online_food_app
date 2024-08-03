import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_food_project/bloc/auth_visibility_bloc/auth_visibility_bloc.dart';
import 'package:online_food_project/bloc/get_menu_bloc/get_menu_bloc.dart';
import 'package:online_food_project/bloc/user_login_bloc/user_login_bloc.dart';
import 'package:online_food_project/bloc/user_register_bloc/user_register_bloc.dart';

import 'core/themes/size.dart';
import 'core/themes/theme.dart';
import 'presentation/view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => UserRegisterBloc(),
        ),
        BlocProvider(
          create: (context) => UserLoginBloc(),
        ),
        BlocProvider(
          create: (context) => AuthVisibilityBloc(),
        ),
        BlocProvider(
          create: (context) => GetMenuBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme(context),
        home: const SplashScreen(),
      ),
    );
  }
}

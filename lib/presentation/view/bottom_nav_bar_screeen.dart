import 'dart:io';

import 'package:flutter/material.dart';
import 'package:online_food_project/presentation/view/display_screen.dart';
import 'package:online_food_project/presentation/view/menu_screen.dart';
import 'package:online_food_project/presentation/view/order_screen.dart';
import 'package:online_food_project/presentation/view/table_screen.dart';

import '../../core/themes/theme.dart';
import '../widgets/custom_alert_dialog_box.dart';



class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  PageController _pageController = PageController();
  int _selectedIndex = 0;
   DateTime? backButtonPressTime;

     final List<Widget> _buildScreens = [
      MenuScreen(),
           OrderScreen(),
           TableScreen(),
           DisplayScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
       onPopInvoked: (_) {
        handleWillPop(context);
      },
      child: Scaffold(
        // appBar: AppBar(
      
        // ),
        // body: PageView(
        //   controller: _pageController,
        //   onPageChanged: (currentIndex) {
        //     setState(() {
        //       _selectedIndex = currentIndex;
        //     });
        //   },
        //   children: [
        //     HomeScreen(),
        //    SearchScreen(),
        //    FavouriteScreen(),
        //    ProfileScreen(),
           
        //   ],
        // ),
          body: (_buildScreens.elementAt(_selectedIndex)),
        //   body: PageView(
        //   controller: _pageController,
        //   onPageChanged: (currentIndex) {
        //     setState(() {
        //       _selectedIndex = currentIndex;
        //     });
        //   },
        //   children: _buildScreens,
        // ),
      
        bottomNavigationBar: Container(
          height: 70,
          child: BottomNavigationBar(
              unselectedLabelStyle:
                   TextStyle(color: Colors.grey[300], fontSize: 13),
              backgroundColor: const Color(0xFFFFFFFF),
              //fixedColor: Color(0xFFFFFFFF),
              unselectedItemColor: Colors.grey[500],
              showUnselectedLabels: true,
              selectedLabelStyle:
                  const TextStyle(color: Color(0xffA2774C), fontSize: 13),
              selectedItemColor: secondaryColor,
              currentIndex: _selectedIndex,
              onTap: (currentIndex) {
                setState(() {
                  _selectedIndex = currentIndex;
                });
                
                _pageController.animateToPage(
                  currentIndex,
                  duration: Duration(milliseconds: 300),
                  curve: Curves.linear,
                );
              },
              items: [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.menu_open,
                      size: 25,
                    ),
                    label: "MENU"),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.punch_clock,
                    size: 25,
                  ),
                  label: "ORDER",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.table_view,
                    size: 25,
                  ),
                  label: "TABLE",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.display_settings,
                    size: 25,
                  ),
                  label: "DISPLAY",
                ),
              ]),
        ),
      ),
    );
  }
   Future<bool> handleWillPop(BuildContext context) async {
    if (_selectedIndex != 0) {
      _itemPressed(0);
      return false;
    } else {
      final backButtonHasNotBeenPressedOrSnackBarHasBeenClosed =
          backButtonPressTime == null;
      if (backButtonHasNotBeenPressedOrSnackBarHasBeenClosed) {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return CustomAlertDialogBox(
                title: "Exit",
                description: "Are you Sure to Exit",
                cancelTitle: "No",
                okTitle: "Yes",
                cancelFun: () {
                  Navigator.pop(context);
                },
                okFun: () {
                  exit(0);
                },
              );
            });

        return false;
      }
      return true;
    }
  }

  void _itemPressed(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
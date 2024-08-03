import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_food_project/bloc/get_menu_bloc/get_menu_bloc.dart';
import 'package:online_food_project/constant/custom_storage.dart';
import 'package:online_food_project/core/themes/theme.dart';
import 'package:online_food_project/presentation/view/auth/login_screen.dart';
import 'package:online_food_project/presentation/widgets/custom_menu_card.dart';

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  bool isSelected = true;

  @override
  void initState() {
    super.initState();
    context.read<GetMenuBloc>().add(FetchMenuEvent());
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "assets/images/restro tech 1.png",
              height: 82,
              width: 80,
            ),
            IconButton(
              onPressed: () {
                deleteTokenAccess();
                Future.delayed(
                  const Duration(seconds: 1),
                  () {
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()),
                      (route) => false,
                    );
                  },
                );
              },
              icon: const Icon(
                Icons.logout,
                color: secondaryColor,
              ),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 71,
            color: Colors.grey[200],
            child: TabBar(
              isScrollable: true,
              controller: _tabController,
              labelColor: primaryColor,
              unselectedLabelColor: Color(0xffA9A9A9),
              indicatorColor: Colors.blue,
              dividerColor: Colors.transparent,
              indicator: BoxDecoration(
                color: isSelected ? secondaryColor : Colors.black,
                //color: secondaryColor,
                borderRadius: BorderRadius.circular(6),
              ),
              labelPadding: EdgeInsets.only(left: 0, right: 8),
              tabs: [
                Tab(text: '  STARTER  '),
                Tab(text: '  MAIN COURSE  '),
                Tab(text: '  DRINKS  '),
                Tab(text: '  DESSERTS  '),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: GridView.builder(
                    padding: const EdgeInsets.all(0),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,

                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 7 / 9,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: 10,
                    // Number of items in the grid
                    itemBuilder: (context, index) {
                      return Container(
                        // width: 220,
                        child: CustomMenuCard(
                          price: "129",
                          image: "",
                          category: "",
                          title: "",
                        ),
                      );
                    },
                  ),
                ),
                //***2nd**************** */
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: GridView.builder(
                    padding: EdgeInsets.all(0),
                    scrollDirection: Axis.vertical,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 7 / 9,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: 5,
                    // Number of items in the grid
                    itemBuilder: (context, index) {
                      return Container(
                        // width: 220,
                        child: CustomMenuCard(
                          price: "129",
                          image: "",
                          category: "",
                          title: "",
                        ),
                      );
                    },
                  ),
                ),
                //*****3rd******************** */
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: BlocBuilder<GetMenuBloc, GetMenuState>(
                    builder: (context, state) {
                      if (state is GetMenuErrorState) {
                        return Center(
                          child: Text(state.error ?? "Unknown Error"),
                        );
                      } else if (state is GetMenuLoadingState) {
                        return const Center(
                          child: CircularProgressIndicator.adaptive(),
                        );
                      } else if (state is GetMenuSuccessState) {
                        return GridView.builder(
                          padding: EdgeInsets.all(0),
                          scrollDirection: Axis.vertical,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 7 / 9,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                          ),
                          itemCount: state.menuData!.length,
                          // Number of items in the grid
                          itemBuilder: (context, index) {
                            final data = state.menuData![index];
                            return CustomMenuCard(
                              title: data.name,
                              category: data.category,
                              image: data.photo,
                              price: data.price.toString(),
                            );
                          },
                        );
                      }
                      return const Center(
                        child: CircularProgressIndicator.adaptive(),
                      );
                    },
                  ),
                ),
                //**4th****************************** */
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: GridView.builder(
                    padding: const EdgeInsets.all(0),
                    scrollDirection: Axis.vertical,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 7 / 9,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: 2,
                    // Number of items in the grid
                    itemBuilder: (context, index) {
                      return const CustomMenuCard(
                        price: "129",
                        image: "",
                        category: "",
                        title: "",
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

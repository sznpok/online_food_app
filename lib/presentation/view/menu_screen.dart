import 'package:flutter/material.dart';
import 'package:online_food_project/core/themes/theme.dart';
import 'package:online_food_project/presentation/widgets/custom_menu_card.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  bool isSelected = true;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
   bool isSelected = true;
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
        title: Text('TabBar Example'),
        // bottom: TabBar(
        //   controller: _tabController,
        //   indicatorColor: Colors.white,
        //   tabs: [
        //     Tab(text: 'Tab 1'),
        //     Tab(text: 'Tab 2'),
        //     Tab(text: 'Tab 3'),
        //   ],
        // ),
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
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                    child: Container(
                    height: 350,
                    child: GridView.builder(
                      padding: EdgeInsets.all(0),
                      scrollDirection: Axis.vertical,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 15.0,
                          mainAxisSpacing: 15.0,
                          mainAxisExtent: 200),
                      itemCount: 21, // Number of items in the grid
                      itemBuilder: (context, index) {
                        return Container(
                          // width: 220,
                          child: CustomMenuCard(),
                        );
                      },
                    ),
                                    ),
                  ),
                Center(child: Text('Content for Tab 2')),
                Center(child: Text('Content for Tab 3')),
                Center(child: Text('Content for Tab 4')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

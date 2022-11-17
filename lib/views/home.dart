import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:booktickets/views/add_record.dart';
import 'package:booktickets/views/history.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../view_models/contoller.dart';
import 'graph.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final controller = Get.put(Controller());

  final iconList = <IconData>[
    Icons.show_chart,
    Icons.history,
  ];
  final screens = [const GraphScreen(), const HistoryScreen()];

  var _bottomNavIndex = 0;
  var _currentscreen = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.primary,
        onPressed: () {
          Get.to(() => const AddRecordSheet());
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        activeColor: Theme.of(context).colorScheme.secondary,
        gapLocation: GapLocation.center,
        backgroundColor: Theme.of(context).colorScheme.background,
        activeIndex: _bottomNavIndex,
        onTap: (index) {
          setState(() {
            _bottomNavIndex = index;
            _currentscreen = index;
          });
        },
        icons: iconList,
      ),
      body: screens[_currentscreen],
    );
  }
}

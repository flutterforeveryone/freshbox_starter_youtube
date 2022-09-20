import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

import '../controller/main_navigation_controller.dart';
import '../widget/build_screen.dart';
import '../widget/navbar_item.dart';

class MainNavigationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MainNavigationController controller =
        Get.put(MainNavigationController(), permanent: true);
    return GetBuilder<MainNavigationController>(
      builder: (_) {
        return SafeArea(
          child: Scaffold(
            bottomNavigationBar: PersistentTabView(
              context,
              controller: controller.tabController,
              screens: buildScreens(),
              items: navBarsItems(),
              confineInSafeArea: true,
              backgroundColor: Colors.white, // Default is Colors.white.
              handleAndroidBackButtonPress: true, // Default is true.
              resizeToAvoidBottomInset:
                  true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
              stateManagement: true, // Default is true.
              hideNavigationBarWhenKeyboardShows:
                  true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
              decoration: NavBarDecoration(
                borderRadius: BorderRadius.circular(10.0),
                colorBehindNavBar: Colors.white,
              ),
              popAllScreensOnTapOfSelectedTab: true,
              popActionScreens: PopActionScreensType.all,
              itemAnimationProperties: ItemAnimationProperties(
                // Navigation Bar's items animation properties.
                duration: Duration(milliseconds: 200),
                curve: Curves.ease,
              ),

              navBarStyle: NavBarStyle.style15,
            ),
          ),
        );
      },
    );
  }
}

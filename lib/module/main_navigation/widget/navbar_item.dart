import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:freshbox_starter_youtube/module/cart/view/cart_view.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

import '../../../utilities/constant.dart';

List<PersistentBottomNavBarItem> navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: ImageIcon(
        AssetImage(
          'asset/icon/home.png',
        ),
      ),
      title: ('Home'),
      activeColorPrimary: primaryColor,
      inactiveColorPrimary: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      icon: ImageIcon(
        AssetImage(
          'asset/icon/transaction.png',
        ),
      ),
      title: ('Transaction'),
      activeColorPrimary: primaryColor,
      inactiveColorPrimary: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      // Replaced with function so we can navigate to CartView
      onPressed: (_) {
        Get.to(() => CartView());
      },
      icon: Badge(
        animationType: BadgeAnimationType.fade,
        padding: EdgeInsets.all(6),
        badgeContent: Text(
          '0',
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        child: ImageIcon(
          AssetImage(
            'asset/icon/cart.png',
          ),
          color: Colors.white,
        ),
      ),
      activeColorPrimary: primaryColor,
      inactiveColorPrimary: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      icon: ImageIcon(
        AssetImage(
          'asset/icon/notification.png',
        ),
      ),
      title: ('Notification'),
      activeColorPrimary: primaryColor,
      inactiveColorPrimary: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      icon: ImageIcon(
        AssetImage(
          'asset/icon/profile.png',
        ),
      ),
      title: ('Profile'),
      activeColorPrimary: primaryColor,
      inactiveColorPrimary: Colors.grey,
    ),
  ];
}

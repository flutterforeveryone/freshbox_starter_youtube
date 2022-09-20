import 'package:flutter/material.dart';
import 'package:freshbox_starter_youtube/module/home/view/home_view.dart';
import 'package:freshbox_starter_youtube/module/notification/view/notification_view.dart';
import 'package:freshbox_starter_youtube/module/profile/view/profile_view.dart';

import '../../cart/view/cart_view.dart';
import '../../transaction/view/transaction_view.dart';

List<Widget> buildScreens() {
  return [
    HomeView(),
    TransactionView(),
    CartView(), //CartView screen is replaced with function on PersistentBottomNavBarItem in navBarsItems.
    NotificationView(),
    ProfileView(),
  ];
}

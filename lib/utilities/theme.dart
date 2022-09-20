import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constant.dart';

ThemeData defaultTheme = ThemeData(
  textTheme: GoogleFonts.poppinsTextTheme(),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.white,
    // toolbarHeight: 80,
    elevation: 0,
    titleTextStyle: TextStyle(
      color: Colors.black,
    ),
    iconTheme: IconThemeData(color: primaryColor),
  ),
  tabBarTheme: TabBarTheme(
    labelColor: Colors.black,
    unselectedLabelColor: Colors.grey[400],
  ),
  scaffoldBackgroundColor: Colors.white,
  cardTheme: CardTheme(
    elevation: 0.8,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(defaultRadiusCircular),
    ),
  ),
);

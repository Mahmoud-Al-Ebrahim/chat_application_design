
import 'package:chat_app/constants.dart';
import 'package:flutter/material.dart';
ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: PrimaryColor,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: appBarTheme,
    iconTheme: IconThemeData(color: ContentColorLightTheme),
    textTheme: Theme.of(context).textTheme.apply(bodyColor: ContentColorLightTheme),
    colorScheme: ColorScheme.light(
      primary: PrimaryColor,
      secondary: SecondaryColor,
      error: ErrorColor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: ContentColorLightTheme.withOpacity(0.7),
      unselectedItemColor: ContentColorLightTheme.withOpacity(0.32),
      selectedIconTheme: IconThemeData(color: PrimaryColor),
      showUnselectedLabels: true,
    ),
  );
}

ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
    primaryColor: PrimaryColor,
    scaffoldBackgroundColor: ContentColorLightTheme,
    appBarTheme: appBarTheme,
    iconTheme: IconThemeData(color: ContentColorDarkTheme),
    textTheme: Theme.of(context).textTheme.apply(bodyColor: ContentColorDarkTheme),
    colorScheme: ColorScheme.dark().copyWith(
      primary: PrimaryColor,
      secondary: SecondaryColor,
      error: ErrorColor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: ContentColorLightTheme,
      selectedItemColor: Colors.white70,
      unselectedItemColor: ContentColorDarkTheme.withOpacity(0.32),
      selectedIconTheme: IconThemeData(color: PrimaryColor),
      showUnselectedLabels: true,
    ),
  );
}

final appBarTheme = AppBarTheme(centerTitle: false, elevation: 0);

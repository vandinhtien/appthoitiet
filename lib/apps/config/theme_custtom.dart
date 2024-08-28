import 'package:flutter/material.dart';

class ThemeCusttom {
  static ThemeData themeLight = ThemeData.light().copyWith(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: Colors.white),
    ),
  );
}

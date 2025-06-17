import 'package:car_shop/src/theme/app_text_theme.dart';
import 'package:car_shop/src/theme/color_scheme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  factory AppTheme() {
    return instance;
  }

  static final AppTheme instance = AppTheme._();
  ThemeData lightTheme(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: colorSchemeLight,
      textTheme: appTextTheme(context),
    );
  }
}

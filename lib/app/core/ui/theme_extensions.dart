import 'package:flutter/material.dart';

extension ThemeExtension on BuildContext {
  Color get primaryColor => Theme.of(this).primaryColor;
  Color get primaryColorLight => Theme.of(this).primaryColorLight;
  ColorScheme? get buttonColor => Theme.of(this).buttonTheme.colorScheme;
  TextTheme get textColor => Theme.of(this).textTheme;

  TextStyle get titleStyle => const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        color: Colors.grey,
      );
}

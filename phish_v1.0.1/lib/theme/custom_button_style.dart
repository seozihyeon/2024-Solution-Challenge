import 'package:flutter/material.dart';
import '../core/app_export.dart';
import 'dart:ui';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Outline button style
  static ButtonStyle get outlineBlack1 => OutlinedButton.styleFrom(
        backgroundColor: appTheme.blueGray10001,
        side: BorderSide(
          color: appTheme.black900,
          width: 1,
        ),
        shape: RoundedRectangleBorder(),
      );

  static ButtonStyle get outlineWhite1 => OutlinedButton.styleFrom(
        backgroundColor: Colors.white,
        side: BorderSide(
          color: appTheme.black900,
          width: 1,
        ),
        shape: RoundedRectangleBorder(),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}

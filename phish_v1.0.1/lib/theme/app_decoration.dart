import 'package:flutter/material.dart';
import 'package:phish/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black900,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray300,
      );

  static BoxDecoration get fillGrayBf => BoxDecoration(
        color: appTheme.gray800Bf,
      );
  static BoxDecoration get fillGrayF => BoxDecoration(
        color: appTheme.gray6007f,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );

  // Outline decorations

  static BoxDecoration get outlineWhite => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.black900.withOpacity(0.25),
          width: 1.h,
        ),
      );

  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.blueGray50,
        border: Border.all(
          color: appTheme.black900.withOpacity(0.25),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBlack900 => BoxDecoration(
        border: Border.all(
          color: appTheme.black900,
          width: 4.h,
        ),
      );
  static BoxDecoration get outlineBlack9001 => BoxDecoration(
        color: appTheme.gray300,
        border: Border.all(
          color: appTheme.black900,
          width: 4.h,
        ),
      );
  static BoxDecoration get outlineBlack9002 => BoxDecoration(
        color: appTheme.gray300,
        border: Border.all(
          color: appTheme.black900,
          width: 4.h,
        ),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: appTheme.gray50,
        border: Border.all(
          color: appTheme.gray500,
          width: 1.h,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder18 => BorderRadius.circular(
        18.h,
      );

  static BorderRadius get circleBorder40 => BorderRadius.circular(
        40.h,
      );

  // Custom borders
  static BorderRadius get customBorderLR20 => BorderRadius.horizontal(
        right: Radius.circular(20.h),
      );
  static BorderRadius get customBorderLR201 => BorderRadius.only(
        topRight: Radius.circular(20.h),
      );
  static BorderRadius get customBorderTL20 => BorderRadius.horizontal(
        left: Radius.circular(20.h),
      );
  static BorderRadius get customBorderTL201 => BorderRadius.only(
        topLeft: Radius.circular(20.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );

  static BorderRadius get roundedBorder4 => BorderRadius.circular(
        4.h,
      );

  static BorderRadius get roundedBorder50 => BorderRadius.circular(
        50.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;

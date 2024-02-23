import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body style
  static get bodyLargeInter => theme.textTheme.bodyLarge!.inter;

  static get bodyLargeInterGray900 => theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.gray900,
      );

  static get bodyLargeInterWhiteA700 =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.whiteA700,
      );

  static get bodySmallInter => theme.textTheme.bodySmall!.inter;
  static get bodySmallInterGray900 => theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w300,
      );

  static get bodySmallInterGray900Light =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallInterff16182c =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: Color(0XFF16182C),
        fontWeight: FontWeight.w300,
      );
  static get bodySmallInterffff0000 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: Color(0XFFFF0000),
      );
  static get bodySmallInterffff0000Light =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: Color(0XFFFF0000),
        fontWeight: FontWeight.w300,
      );
  // Display text style
  static get displayMediumBlack900 => theme.textTheme.displayMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 48.fSize,
      );
  // Headline text style
  static get headlineLargeGray900 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.gray900,
      );
  static get headlineLargeInterWhiteA700 =>
      theme.textTheme.headlineLarge!.inter.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w400,
      );
  static get headlineLargeInterWhiteA700Regular =>
      theme.textTheme.headlineLarge!.inter.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w400,
      );
  static get headlineLargeWhiteA700 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get headlineMedium28 => theme.textTheme.headlineMedium!.copyWith(
        fontSize: 28.fSize,
      );
  static get headlineMediumInterWhiteA700 =>
      theme.textTheme.headlineMedium!.inter.copyWith(
        color: appTheme.whiteA700,
        fontSize: 28.fSize,
        fontWeight: FontWeight.w400,
      );
  static get headlineMediumWhiteA700 =>
      theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 28.fSize,
      );
  static get headlineSmallInterWhiteA700 =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallWhiteA700 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.whiteA700,
      );
  // Label text style
  static get labelLargeff16182c => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFF16182C),
      );
  static get labelLargeffffffff => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFFFFFFFF),
        fontWeight: FontWeight.w500,
      );
  // Title text style
  static get titleLargeDeeppurple500 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.deepPurple500,
      );
  static get titleLargeGray900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w900,
      );

  static get titleSmallGray900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w900,
      );

  static get titleLargePoppins3 => theme.textTheme.titleLarge!.poppins.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 17.fSize,
      );

  static get titleLargePoppins2 => theme.textTheme.titleLarge!.poppins.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 15.3.fSize,
      );

  static get titleLargePoppins => theme.textTheme.titleLarge!.poppins.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 20.fSize,
      );

  static get titleLargeWhiteA700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w400,
      );

  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBlack900_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumInterWhiteA700 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w900,
      );
  static get titleMediumInterff70ff00 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: Color(0XFF70FF00),
        fontWeight: FontWeight.w900,
      );
  static get titleMediumInterffff0000 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: Color(0XFFFF0000),
        fontWeight: FontWeight.w900,
      );

  static get bodySmallWhiteA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w400,
      );
  // Headline text style
  static get headlineLargePoppinsBlack900 =>
      theme.textTheme.headlineLarge!.poppins.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get headlineLargePoppinsGray900 =>
      theme.textTheme.headlineLarge!.poppins.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w600,
      );
  static get headlineLarge_1 => theme.textTheme.headlineLarge!;

  static get headlineSmallBlack900 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900,
        fontSize: 24.fSize,
      );

  static get headlineSmallBlack1000 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900,
        fontSize: 23.5.fSize,
      );

  static get headlineSmallBlack1100 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900,
        fontSize: 23.fSize,
      );
  // Title text style
  static get titleLargePoppinsWhiteA700 =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );

  static get titleLargePoppinsWhiteA800 =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
        fontSize: 23.fSize,
      );

  static get titleLargePoppinsBlackA900 =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
        fontSize: 26.2.fSize,
      );

  static get titleLargePoppinsBlackA1000 =>
      theme.textTheme.bodyMedium!.poppins.copyWith();

  static get titleLargePoppinsWhiteA900 =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
        fontSize: 26.2.fSize,
      );

  static get titleLargePoppinsWhiteA950 =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
        fontSize: 33.fSize,
      );

  static get titleLargePoppinsWhiteA1000 =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
        fontSize: 40.fSize,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}

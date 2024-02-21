import 'package:flutter/material.dart';
import 'package:phish/presentation/android_standards_screen/android_standards_screen.dart';
import 'package:phish/presentation/revised_frame_zero_screen/revised_frame_zero_screen.dart';
import 'package:phish/presentation/revised_frame_zeroplus_screen/revised_frame_zeroplus_screen.dart';
import 'package:phish/presentation/revised_frame_zeroplus2_screen/revised_frame_zeroplus2_screen.dart';
import 'package:phish/presentation/revised_frame_zeroplus3_screen/revised_frame_zeroplus3_screen.dart';
import 'package:phish/presentation/revised_frame_zeroplus4_screen/revised_frame_zeroplus4_screen.dart';
import 'package:phish/presentation/revised_frame_zeroplus5_screen/revised_frame_zeroplus5_screen.dart';
import 'package:phish/presentation/revised_frame_one_screen/revised_frame_one_screen.dart';
import 'package:phish/presentation/revised_frame_two_screen/revised_frame_two_screen.dart';
import 'package:phish/presentation/revised_frame_three_screen/revised_frame_three_screen.dart';
import 'package:phish/presentation/revised_frame_seven_screen/revised_frame_seven_screen.dart';
import 'package:phish/presentation/revised_frame_eight_screen/revised_frame_eight_screen.dart';
import 'package:phish/presentation/alert_page_3_one_screen/alert_page_3_one_screen.dart';
import 'package:phish/presentation/voice_records_libraries_screen/voice_records_libraries_screen.dart';
import 'package:phish/presentation/alert_page_3_two_one_screen/alert_page_3_two_one_screen.dart';
import 'package:phish/presentation/alert_page_3_two_two_screen/alert_page_3_two_two_screen.dart';
import 'package:phish/presentation/alert_page_3_two_three_screen/alert_page_3_two_three_screen.dart';
import 'package:phish/presentation/alert_page_3_two_screen/alert_page_3_two_screen.dart';
import 'package:phish/presentation/how_to_screen/how_to_screen.dart';
import 'package:phish/presentation/how_to_pageone_screen/how_to_pageone_screen.dart';
import 'package:phish/presentation/how_to_pagetwo_screen/how_to_pagetwo_screen.dart';
import 'package:phish/presentation/how_to_pagetwo_one_screen/how_to_pagetwo_one_screen.dart';
import 'package:phish/presentation/how_to_pagetwo_three_screen/how_to_pagetwo_three_screen.dart';
import 'package:phish/presentation/how_to_pagetwo_four_screen/how_to_pagetwo_four_screen.dart';
import 'package:phish/presentation/how_to_pagetwo_five_screen/how_to_pagetwo_five_screen.dart';
import 'package:phish/presentation/how_to_pagetwo_two_screen/how_to_pagetwo_two_screen.dart';
import 'package:phish/presentation/android_large_one_page/android_large_one_page.dart';
import 'package:phish/presentation/android_large_two_page/android_large_two_page.dart';
import 'package:phish/presentation/android_large_two_tab_container_screen/android_large_two_tab_container_screen.dart';
import 'package:phish/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String androidStandardsScreen = '/android_standards_screen';

  static const String revisedFrameZeroScreen = '/revised_frame_zero_screen';

  static const String revisedFrameZeroplusScreen = '/revised_frame_zeroplus_screen';

  static const String revisedFrameZeroplus2Screen = '/revised_frame_zeroplus2_screen';

  static const String revisedFrameZeroplus3Screen = '/revised_frame_zeroplus3_screen';

  static const String revisedFrameZeroplus4Screen = '/revised_frame_zeroplus4_screen';

  static const String revisedFrameZeroplus5Screen = '/revised_frame_zeroplus5_screen';
  

  static const String revisedFrameOneScreen = '/revised_frame_one_screen';

  static const String revisedFrameTwoScreen = '/revised_frame_two_screen';

  static const String revisedFrameThreeScreen = '/revised_frame_three_screen';

  static const String revisedFrameSevenScreen = '/revised_frame_seven_screen';

  static const String revisedFrameEightScreen = '/revised_frame_eight_screen';

  static const String alertPage3OneScreen = '/alert_page_3_one_screen';

  static const String voiceRecordsLibrariesScreen =
      '/voice_records_libraries_screen';

  static const String alertPage3TwoOneScreen = '/alert_page_3_two_one_screen';

  static const String alertPage3TwoTwoScreen = '/alert_page_3_two_two_screen';

  static const String alertPage3TwoThreeScreen =
      '/alert_page_3_two_three_screen';

  static const String alertPage3TwoScreen = '/alert_page_3_two_screen';

  static const String howToScreen = '/how_to_screen';

  static const String howToPageoneScreen = '/how_to_pageone_screen';

  static const String howToPagetwoScreen = '/how_to_pagetwo_screen';

  static const String howToPagetwoOneScreen = '/how_to_pagetwo_one_screen';

  static const String howToPagetwoThreeScreen = '/how_to_pagetwo_three_screen';

  static const String howToPagetwoFourScreen = '/how_to_pagetwo_four_screen';

  static const String howToPagetwoFiveScreen = '/how_to_pagetwo_five_screen';

  static const String howToPagetwoTwoScreen = '/how_to_pagetwo_two_screen';

  static const String androidLargeOnePage = '/android_large_one_page';

  static const String androidLargeTwoPage = '/android_large_two_page';

  static const String androidLargeTwoTabContainerScreen =
      '/android_large_two_tab_container_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    androidStandardsScreen: (context) => AndroidStandardsScreen(),
    revisedFrameZeroScreen: (context) => RevisedFrameZeroScreen(),
    revisedFrameZeroplusScreen: (context) => RevisedFrameZeroplusScreen(),
    revisedFrameZeroplus2Screen: (context) => RevisedFrameZeroplus2Screen(),
    revisedFrameZeroplus3Screen: (context) => RevisedFrameZeroplus3Screen(),
    revisedFrameZeroplus4Screen: (context) => RevisedFrameZeroplus4Screen(),
    revisedFrameZeroplus5Screen: (context) => RevisedFrameZeroplus5Screen(),
    revisedFrameOneScreen: (context) => RevisedFrameOneScreen(),
    revisedFrameTwoScreen: (context) => RevisedFrameTwoScreen(),
    revisedFrameThreeScreen: (context) => RevisedFrameThreeScreen(),
    revisedFrameSevenScreen: (context) => RevisedFrameSevenScreen(),
    revisedFrameEightScreen: (context) => RevisedFrameEightScreen(),
    alertPage3OneScreen: (context) => AlertPage3OneScreen(),
    voiceRecordsLibrariesScreen: (context) => VoiceRecordsLibrariesScreen(),
    alertPage3TwoOneScreen: (context) => AlertPage3TwoOneScreen(),
    alertPage3TwoTwoScreen: (context) => AlertPage3TwoTwoScreen(),
    alertPage3TwoThreeScreen: (context) => AlertPage3TwoThreeScreen(),
    alertPage3TwoScreen: (context) => AlertPage3TwoScreen(),
    howToScreen: (context) => HowToScreen(),
    howToPageoneScreen: (context) => HowToPageoneScreen(),
    howToPagetwoScreen: (context) => HowToPagetwoScreen(),
    howToPagetwoOneScreen: (context) => HowToPagetwoOneScreen(),
    howToPagetwoThreeScreen: (context) => HowToPagetwoThreeScreen(),
    howToPagetwoFourScreen: (context) => HowToPagetwoFourScreen(),
    howToPagetwoFiveScreen: (context) => HowToPagetwoFiveScreen(),
    howToPagetwoTwoScreen: (context) => HowToPagetwoTwoScreen(),
    androidLargeOnePage: (context) => AndroidLargeOnePage(),
    androidLargeTwoPage: (context) => AndroidLargeTwoPage(),
    androidLargeTwoTabContainerScreen: (context) =>
        AndroidLargeTwoTabContainerScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}

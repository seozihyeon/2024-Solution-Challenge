import 'package:flutter/material.dart';
import 'package:sihyeong_s_phishing_app/presentation/revised_frame_one_screen/revised_frame_one_screen.dart';
import 'package:sihyeong_s_phishing_app/presentation/revised_frame_two_screen/revised_frame_two_screen.dart';
import 'package:sihyeong_s_phishing_app/presentation/revised_frame_three_screen/revised_frame_three_screen.dart';
import 'package:sihyeong_s_phishing_app/presentation/revised_frame_seven_screen/revised_frame_seven_screen.dart';
import 'package:sihyeong_s_phishing_app/presentation/revised_frame_eight_screen/revised_frame_eight_screen.dart';
import 'package:sihyeong_s_phishing_app/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String revisedFrameOneScreen = '/revised_frame_one_screen';

  static const String revisedFrameTwoScreen = '/revised_frame_two_screen';

  static const String revisedFrameThreeScreen = '/revised_frame_three_screen';

  static const String revisedFrameSevenScreen = '/revised_frame_seven_screen';

  static const String revisedFrameEightScreen = '/revised_frame_eight_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    revisedFrameOneScreen: (context) => RevisedFrameOneScreen(),
    revisedFrameTwoScreen: (context) => RevisedFrameTwoScreen(),
    revisedFrameThreeScreen: (context) => RevisedFrameThreeScreen(),
    revisedFrameSevenScreen: (context) => RevisedFrameSevenScreen(),
    revisedFrameEightScreen: (context) => RevisedFrameEightScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}

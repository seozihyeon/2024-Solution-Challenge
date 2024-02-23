import 'package:phish/presentation/android_large_one_page/android_large_one_page.dart';

import 'package:phish/presentation/android_large_two_tab_container_screen/android_large_two_tab_container_screen.dart';

import 'package:phish/presentation/revised_frame_one_screen/widgets/framebettxt_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:phish/core/app_export.dart';
import 'package:phish/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:phish/presentation/voice_records_libraries_screen/voice_records_libraries_screen.dart';
import 'package:phish/presentation/alert_page_3_two_one_screen/alert_page_3_two_one_screen.dart';
import 'package:phish/presentation/alert_page_3_two_two_screen/alert_page_3_two_two_screen.dart';
import 'package:phish/presentation/alert_page_3_two_three_screen/alert_page_3_two_three_screen.dart';
import 'package:phish/presentation/alert_page_3_two_screen/alert_page_3_two_screen.dart';
import 'package:phish/presentation/alert_page_3_two_four_screen/alert_page_3_two_four_screen.dart';
import 'package:phish/presentation/alert_page_3_two_five_screen/alert_page_3_two_five_screen.dart';
import 'package:phish/presentation/alert_page_3_two_six_screen/alert_page_3_two_six_screen.dart';

class RevisedFrameZeroplus42Screen extends StatelessWidget {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: Column(
        children: [
          // Page View
          Flexible(
            child: PageView(
              controller: _controller,
              children: [
                AlertPage3TwoSixScreen(),
                AlertPage3TwoScreen(),
                AlertPage3TwoFourScreen(),
              ],
            ),
          ),

          // Dot Indicators
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SmoothPageIndicator(
                controller: _controller, // PageController
                count: 3,
                effect: ScrollingDotsEffect(
                  spacing: 17.11,
                  activeDotColor: appTheme.blueA200,
                  dotColor: appTheme.blueGray100,
                  dotHeight: 8.v,
                  dotWidth: 8.h,
                ),
                onDotClicked: (index) {}),
          ),
        ],
      ),
    );
  }
}

import 'package:phish/presentation/revised_frame_four_dialog/revised_frame_four_dialog.dart';
import 'package:phish/presentation/revised_frame_five_dialog/revised_frame_five_dialog.dart';
import 'package:phish/presentation/revised_frame_six_dialog/revised_frame_six_dialog.dart';


import 'package:phish/presentation/revised_frame_one_screen/widgets/framebettxt_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:phish/core/app_export.dart';
import 'package:phish/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';



class RevisedFrameZeroplusScreen extends StatelessWidget {
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
                RevisedFrameFourDialog(),
                RevisedFrameFiveDialog(),
                RevisedFrameSixDialog(),
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

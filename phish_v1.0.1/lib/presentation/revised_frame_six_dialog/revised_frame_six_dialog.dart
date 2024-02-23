import 'package:flutter/material.dart';
import 'package:phish/core/app_export.dart';
import 'package:phish/presentation/revised_frame_zeroplus2_screen/revised_frame_zeroplus2_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:phish/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class RevisedFrameSixDialog extends StatelessWidget {
  const RevisedFrameSixDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 317.h,
      padding: EdgeInsets.fromLTRB(43.h, 120.v, 18.h, 38.v),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder50,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 40.v),
          Text(
            "How to use this app ",
            style: theme.textTheme.headlineMedium,
          ),
          SizedBox(height: 77.v),
          CustomImageView(
            imagePath: ImageConstant.imgImage4,
            height: 192.adaptSize,
            width: 192.adaptSize,
          ),
          SizedBox(height: 110.v),
          SizedBox(
            width: 278.h,
            child: Text(
              "You can access to the previous recording files\nby touching the file icon. ",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodySmall!.copyWith(
                height: 1.24,
              ),
            ),
          ),
          SizedBox(height: 10.v),
                    CustomElevatedButton(
                height: 50.h,
                width: 100.h,
                text: "Next",
                onPressed: () {
                  _completeSplash(context, RevisedFrameZeroplus2Screen());
                },
              ),
          SizedBox(height: 45.v),
          SizedBox(
            height: 7.v,
            child: AnimatedSmoothIndicator(
              activeIndex: 2,
              count: 3,
              effect: ScrollingDotsEffect(
                spacing: 14.67,
                activeDotColor: appTheme.blueA200,
                dotColor: appTheme.blueGray100,
                dotHeight: 7.v,
                dotWidth: 7.h,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

  void _completeSplash(BuildContext context, Widget widget) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (BuildContext context) => widget));
  }
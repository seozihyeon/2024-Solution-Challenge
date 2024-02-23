import 'package:flutter/material.dart';
import 'package:phish/core/app_export.dart';
import 'package:phish/widgets/custom_elevated_button.dart';
import 'package:phish/presentation/revised_frame_zero_screen/revised_frame_zero_screen.dart';

class AndroidStandardsScreen extends StatelessWidget {
  const AndroidStandardsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: appTheme.whiteA700,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgAndroidStandards,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 26.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 27.v),
                CustomImageView(
                  imagePath: ImageConstant.imgPlay,
                  height: 52.adaptSize,
                  width: 52.adaptSize,
                ),
                SizedBox(height: 12.v),
                Text(
                  "Phishing?",
                  style: CustomTextStyles.bodySmallWhiteA700,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: CustomElevatedButton(
                    height: 40.h,
                    width: 100.h,
                    text: "Next",
                    onPressed: () {
                      _completeSplash(context, RevisedFrameZeroScreen());
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void _completeSplash(BuildContext context, Widget widget) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (BuildContext context) => widget));
}

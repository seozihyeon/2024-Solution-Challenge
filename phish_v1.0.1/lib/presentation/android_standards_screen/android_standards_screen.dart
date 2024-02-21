import 'package:flutter/material.dart';
import 'package:phish/core/app_export.dart';

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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

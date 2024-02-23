import 'package:flutter/material.dart';
import 'package:phish/core/app_export.dart';
import 'package:phish/widgets/app_bar/appbar_leading_image.dart';
import 'package:phish/widgets/app_bar/appbar_trailing_image.dart';
import 'package:phish/widgets/app_bar/custom_app_bar.dart';
import 'package:phish/widgets/custom_elevated_button.dart';
import 'package:phish/presentation/alert_page_3_one_screen/alert_page_3_one_screen.dart';

class VoiceRecordsLibrariesScreen extends StatelessWidget {
  const VoiceRecordsLibrariesScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 26.h,
            vertical: 29.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 44.v),
              CustomImageView(
                imagePath: ImageConstant.imgFreeIconData,
                height: 280.adaptSize,
                width: 280.adaptSize,
                alignment: Alignment.centerLeft,
              ),
              SizedBox(height: 15.v),
              Container(
                width: 250.h,
                margin: EdgeInsets.only(
                  left: 29.h,
                  right: 27.h,
                ),
                child: Text(
                  "Analyzing previous calls... ",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.headlineLargePoppinsGray900,
                ),
              ),
              SizedBox(height: 15.v),
              Container(
                width: 237.h,
                margin: EdgeInsets.only(
                  left: 36.h,
                  right: 34.h,
                ),
                child: Text(
                  "It will took minutes to check the suspicious parts of the calls.",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyLargeInterGray900.copyWith(
                    height: 1.24,
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBackToMain(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 68.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgFile1,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgFreeIconReload7358485,
          margin: EdgeInsets.fromLTRB(23.h, 12.v, 23.h, 20.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildBackToMain(BuildContext context) {
    return CustomElevatedButton(
      width: 200.h,
      text: "Back to Main",
      onPressed: () {
        _completeSplash(context, AlertPage3OneScreen());
      },
      margin: EdgeInsets.only(
        left: 80.h,
        right: 80.h,
        bottom: 42.v,
      ),
      buttonTextStyle: CustomTextStyles.headlineLarge_1,
    );
  }
}

void _completeSplash(BuildContext context, Widget widget) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (BuildContext context) => widget));
}

import 'package:flutter/material.dart';
import 'package:phish/core/app_export.dart';
import 'package:phish/widgets/app_bar/appbar_leading_image.dart';
import 'package:phish/widgets/app_bar/custom_app_bar.dart';

class AlertPage3TwoOneScreen extends StatelessWidget {
  const AlertPage3TwoOneScreen({Key? key})
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
          padding: EdgeInsets.symmetric(vertical: 4.v),
          child: Column(
            children: [
              Spacer(
                flex: 68,
              ),
              SizedBox(
                width: 242.h,
                child: Text(
                  "Analyzing Completed!",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.displayMedium,
                ),
              ),
              Spacer(
                flex: 31,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgFile1,
        margin: EdgeInsets.only(right: 292.h),
      ),
    );
  }
}

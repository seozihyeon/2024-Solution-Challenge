import 'package:flutter/material.dart';
import 'package:phish/core/app_export.dart';
import 'package:phish/widgets/custom_elevated_button.dart';

class HowToScreen extends StatelessWidget {
  const HowToScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.all(24.h),
          child: Column(
            children: [
              Container(
                width: 289.h,
                margin: EdgeInsets.only(
                  left: 8.h,
                  right: 13.h,
                ),
                child: Text(
                  "Does Phishing \ncalled to you?",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.displayMedium,
                ),
              ),
              SizedBox(height: 14.v),
              CustomImageView(
                imagePath: ImageConstant.imgKnowledge1,
                height: 200.adaptSize,
                width: 200.adaptSize,
              ),
              SizedBox(height: 67.v),
              SizedBox(
                width: 310.h,
                child: Text(
                  "Here some advices : How to deal with  Phishing methods",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.headlineLargePoppinsGray900,
                ),
              ),
              SizedBox(height: 68.v),
              CustomElevatedButton(
                width: 200.h,
                text: "See Advices",
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}

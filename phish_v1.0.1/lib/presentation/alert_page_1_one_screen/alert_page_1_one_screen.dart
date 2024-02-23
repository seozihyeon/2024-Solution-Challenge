import 'package:flutter/material.dart';
import 'package:phish/core/app_export.dart';

class AlertPage1OneScreen extends StatelessWidget {
  const AlertPage1OneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: CustomImageView(
            imagePath: ImageConstant.imgImage7,
            height: 800.v,
            width: 360.h,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}

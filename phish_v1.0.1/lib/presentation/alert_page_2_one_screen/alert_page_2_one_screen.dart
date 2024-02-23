import 'package:flutter/material.dart';
import 'package:phish/core/app_export.dart';

class AlertPage2OneScreen extends StatelessWidget {
  const AlertPage2OneScreen({Key? key})
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
                ImageConstant.imgAlertPage2One,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 39.h,
              vertical: 86.v,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 76.v,
                  width: 200.h,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 50.v,
                          width: 200.h,
                          decoration: BoxDecoration(
                            color: appTheme.black900,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          "GDSC",
                          style: CustomTextStyles.titleLargePoppinsWhiteA1000,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "Mobile 121",
                          style: CustomTextStyles.titleLargeWhiteA700,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                SizedBox(height: 75.v),
                Container(
                  width: 280.h,
                  padding: EdgeInsets.symmetric(horizontal: 23.h),
                  decoration: AppDecoration.fillGray.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder18,
                  ),
                  child: Text(
                    "Call recording have saved.\nCheck your recent history and settings.",
                    style: theme.textTheme.bodySmall,
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

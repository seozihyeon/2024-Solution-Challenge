import 'package:flutter/material.dart';
import 'package:phish/core/app_export.dart';

// ignore: must_be_immutable
class GridframeItemWidget extends StatelessWidget {
  const GridframeItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: EdgeInsets.all(0),
          color: appTheme.gray300,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: appTheme.black900,
              width: 4.h,
            ),
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Container(
            height: 160.adaptSize,
            width: 160.adaptSize,
            decoration: AppDecoration.outlineBlack9001.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgArrowLeft,
                  height: 60.adaptSize,
                  width: 60.adaptSize,
                  alignment: Alignment.bottomRight,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 1.h),
                    child: Text(
                      "NEW",
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgImage1,
                  height: 80.adaptSize,
                  width: 80.adaptSize,
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 6.v),
        Padding(
          padding: EdgeInsets.only(left: 3.h),
          child: Text(
            "Topic 1",
            style: theme.textTheme.bodyLarge,
          ),
        ),
      ],
    );
  }
}

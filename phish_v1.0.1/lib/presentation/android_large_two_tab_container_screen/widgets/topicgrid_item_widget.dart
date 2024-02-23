import 'package:flutter/material.dart';
import 'package:phish/core/app_export.dart';
import 'package:phish/widgets/custom_elevated_button.dart';
import 'package:phish/presentation/revised_frame_zeroplus5_screen/revised_frame_zeroplus5_screen.dart';

// ignore: must_be_immutable
class TopicgridItemWidget extends StatelessWidget {
  const TopicgridItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 160.adaptSize,
          width: 160.adaptSize,
          padding: EdgeInsets.symmetric(
            horizontal: 38.h,
            vertical: 40.v,
          ),
          decoration: AppDecoration.fillGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgImage1,
            height: 80.adaptSize,
            width: 80.adaptSize,
            alignment: Alignment.center,
          ),
        ),
        SizedBox(height: 6.v),
        Padding(
          padding: EdgeInsets.only(left: 3.h),
          child: Text(
            "Topic 3",
            style: theme.textTheme.bodyLarge,
          ),
        ),
      ],
    );
  }
}

void _completeSplash(BuildContext context, Widget widget) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (BuildContext context) => widget));
}

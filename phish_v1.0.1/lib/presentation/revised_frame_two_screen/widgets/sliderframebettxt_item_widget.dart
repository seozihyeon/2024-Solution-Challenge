import 'package:flutter/material.dart';
import 'package:phish/core/app_export.dart';

// ignore: must_be_immutable
class SliderframebettxtItemWidget extends StatelessWidget {
  const SliderframebettxtItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Need permissions",
                style: CustomTextStyles.headlineLargePoppinsGray900,
              ),
              Text(
                "Please allow permissions to use app",
                style: CustomTextStyles.bodyLargeInterGray900,
              ),
            ],
          ),
        ),
      ],
    );

  }
}

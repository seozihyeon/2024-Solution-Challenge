import 'package:flutter/material.dart';
import 'package:phish/core/app_export.dart';

// ignore: must_be_immutable
class FramebettxtItemWidget extends StatelessWidget {
  const FramebettxtItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Welcome!",
          style: CustomTextStyles.headlineLargePoppinsGray900,
        ),
        Text(
          "Alerts you to prevent financial crime",
          style: CustomTextStyles.bodyLargeInterGray900,
        ),
      ],
    );
  }
}

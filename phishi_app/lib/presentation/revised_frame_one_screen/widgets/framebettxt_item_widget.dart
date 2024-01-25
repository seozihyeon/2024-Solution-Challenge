import 'package:flutter/material.dart';
import 'package:sihyeong_s_phishing_app/core/app_export.dart';

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
          style: theme.textTheme.headlineLarge,
        ),
        Text(
          "Alerts you to prevent financial crime",
          style: theme.textTheme.bodyLarge,
        ),
      ],
    );
  }
}

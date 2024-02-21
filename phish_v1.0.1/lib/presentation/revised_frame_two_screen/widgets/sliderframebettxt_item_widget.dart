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
        Text(
          "Need permissions",
          style: theme.textTheme.headlineMedium,
        ),
        Text(
          "Please allow permissions to use app",
          style: theme.textTheme.bodyLarge,
        ),
      ],
    );
  }
}

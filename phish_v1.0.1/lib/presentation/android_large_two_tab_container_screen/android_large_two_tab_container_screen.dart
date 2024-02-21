import 'package:flutter/material.dart';
import 'package:phish/core/app_export.dart';
import 'package:phish/presentation/android_large_one_page/android_large_one_page.dart';
import 'package:phish/presentation/android_large_two_page/android_large_two_page.dart';
import 'package:phish/widgets/app_bar/appbar_title.dart';
import 'package:phish/widgets/app_bar/appbar_trailing_image.dart';
import 'package:phish/widgets/app_bar/custom_app_bar.dart';

class AndroidLargeTwoTabContainerScreen extends StatefulWidget {
  const AndroidLargeTwoTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AndroidLargeTwoTabContainerScreenState createState() =>
      AndroidLargeTwoTabContainerScreenState();
}

class AndroidLargeTwoTabContainerScreenState
    extends State<AndroidLargeTwoTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 4.v),
              _buildTabview(context),
              Expanded(
                child: SizedBox(
                  height: 684.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      AndroidLargeOnePage(),
                      AndroidLargeTwoPage(),
                    ],
                  ),
                ),
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
      height: 50.v,
      title: AppbarTitle(
        text: "Phishing Trends",
        margin: EdgeInsets.only(left: 11.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgHook1,
          margin: EdgeInsets.only(
            left: 4.h,
            right: 10.h,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgImage436x36,
          margin: EdgeInsets.fromLTRB(5.h, 9.v, 20.h, 3.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 62.v,
      width: double.maxFinite,
      child: TabBar(
        controller: tabviewController,
        isScrollable: true,
        labelColor: appTheme.black900,
        labelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w300,
        ),
        unselectedLabelColor: appTheme.black900,
        unselectedLabelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w300,
        ),
        indicator: BoxDecoration(
          color: appTheme.blueGray10001,
          border: Border(
            bottom: BorderSide(
              color: appTheme.black900,
              width: 1.h,
            ),
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "Latest cases",
            ),
          ),
          Tab(
            child: Text(
              "Main Types",
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:phish/core/app_export.dart';
import 'package:phish/presentation/android_large_one_page/android_large_one_page.dart';
import 'package:phish/presentation/android_large_two_screen/android_large_two_screen.dart';
import 'package:phish/widgets/custom_icon_button.dart';
import 'package:phish/widgets/custom_elevated_button.dart';
import 'package:phish/presentation/revised_frame_zeroplus4_screen/revised_frame_zeroplus4_screen.dart';
import 'package:phish/presentation/revised_frame_zeroplus43_screen/revised_frame_zeroplus43_screen.dart';

class AndroidLargeOneTabContainerScreen extends StatefulWidget {
  const AndroidLargeOneTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AndroidLargeOneTabContainerScreenState createState() =>
      AndroidLargeOneTabContainerScreenState();
}

class AndroidLargeOneTabContainerScreenState
    extends State<AndroidLargeOneTabContainerScreen>
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
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildPhishingTrendsRow(context),
                SizedBox(height: 4.v),
                _buildTabview(context),
                SizedBox(
                  height: 824.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      AndroidLargeOnePage(),
                      AndroidLargeOnePage(),
                    ],
                  ),
                ),
                CustomElevatedButton(
                  height: 40.h,
                  width: 100.h,
                  text: "Next",
                  onPressed: () {
                    _completeSplash(context, RevisedFrameZeroplus43Screen());
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPhishingTrendsRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 11.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Text(
              "Phishing Trends",
              style: CustomTextStyles.headlineLargePoppinsGray900,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgHook1,
            height: 40.adaptSize,
            width: 40.adaptSize,
            margin: EdgeInsets.only(
              left: 2.h,
              bottom: 10.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 5.h,
              top: 9.v,
              bottom: 13.v,
            ),
            child: CustomIconButton(
              height: 28.adaptSize,
              width: 28.adaptSize,
              child: CustomImageView(
                imagePath: ImageConstant.imgImage436x36,
              ),
            ),
          ),
        ],
      ),
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
          color: appTheme.gray50,
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

void _completeSplash(BuildContext context, Widget widget) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (BuildContext context) => widget));
}

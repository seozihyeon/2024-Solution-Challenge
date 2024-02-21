import 'package:flutter/material.dart';
import 'package:phish/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Android Standards",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.androidStandardsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Revised Frame One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.revisedFrameOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Revised Frame Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.revisedFrameTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Revised Frame Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.revisedFrameThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Revised Frame Seven",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.revisedFrameSevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Revised Frame Eight",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.revisedFrameEightScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Alert page 3-One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.alertPage3OneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Voice records libraries",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.voiceRecordsLibrariesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Alert page 3-Two One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.alertPage3TwoOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Alert page 3-Two Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.alertPage3TwoTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Alert page 3-Two Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.alertPage3TwoThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Alert page 3-Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.alertPage3TwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "HOW TO",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.howToScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "HOW TO pageOne",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.howToPageoneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "HOW TO pageTwo",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.howToPagetwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "HOW TO pageTwo One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.howToPagetwoOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "HOW TO pageTwo Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.howToPagetwoThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "HOW TO pageTwo Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.howToPagetwoFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "HOW TO pageTwo Five",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.howToPagetwoFiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "HOW TO pageTwo Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.howToPagetwoTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Android Large - Two - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.androidLargeTwoTabContainerScreen),
                        ),
                      ],
                    ),
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
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}

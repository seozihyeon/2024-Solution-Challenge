import '../android_large_two_page/widgets/gridframe_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:phish/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AndroidLargeTwoPage extends StatefulWidget {
  const AndroidLargeTwoPage({Key? key})
      : super(
          key: key,
        );

  @override
  AndroidLargeTwoPageState createState() => AndroidLargeTwoPageState();
}

class AndroidLargeTwoPageState extends State<AndroidLargeTwoPage>
    with AutomaticKeepAliveClientMixin<AndroidLargeTwoPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 16.v),
              _buildGridFrame(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildGridFrame(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.h),
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 191.v,
            crossAxisCount: 2,
            mainAxisSpacing: 16.h,
            crossAxisSpacing: 16.h,
          ),
          physics: BouncingScrollPhysics(),
          itemCount: 8,
          itemBuilder: (context, index) {
            return GridframeItemWidget();
          },
        ),
      ),
    );
  }
}

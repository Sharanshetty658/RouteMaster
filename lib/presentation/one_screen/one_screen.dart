import 'package:sharan_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:sharan_s_application9/widgets/app_bar/appbar_leading_image.dart';
import 'package:sharan_s_application9/widgets/app_bar/appbar_title_searchview.dart';
import 'package:sharan_s_application9/widgets/app_bar/appbar_image.dart';
import 'package:sharan_s_application9/widgets/custom_icon_button.dart';
import 'widgets/nine_item_widget.dart';
import 'widgets/eight_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:sharan_s_application9/core/app_export.dart';

class OneScreen extends StatelessWidget {
  OneScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: _buildAppBar(context),
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0, 0),
              end: Alignment(1, 1),
              colors: [
                appTheme.lightBlue5026,
                appTheme.whiteA700,
              ],
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 18.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Recent Search",
                  style: theme.textTheme.headlineSmall,
                ),
                SizedBox(height: 10.v),
                Container(
                  width: 268.h,
                  margin: EdgeInsets.only(right: 59.h),
                  child: Text(
                    "Recently you search about best restaurants near you.",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyMediumBluegray800,
                  ),
                ),
                SizedBox(height: 20.v),
                _buildSection(context),
                SizedBox(height: 25.v),
                _buildEleven(
                  context,
                  recents: "Category",
                  seeAll: "See All",
                ),
                SizedBox(height: 15.v),
                _buildNine(context),
                SizedBox(height: 23.v),
                _buildEleven(
                  context,
                  recents: "Recents",
                  seeAll: "See All",
                ),
                SizedBox(height: 17.v),
                _buildEight(context),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgCiMenuAlt03,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 16.v,
          bottom: 16.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitleSearchview(
        hintText: "Search",
        controller: searchController,
      ),
      actions: [
        Container(
          margin: EdgeInsets.fromLTRB(12.h, 12.v, 16.h, 12.v),
          padding: EdgeInsets.all(3.h),
          decoration: AppDecoration.fillWhiteA.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder6,
          ),
          child: AppbarImage(
            imagePath: ImageConstant.imgUnsplashT9Nho5d0pc,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "22°",
                style: CustomTextStyles.headlineSmallSemiBold,
              ),
              SizedBox(height: 5.v),
              Text(
                "Jun 24, 2023",
                style: theme.textTheme.labelLarge,
              ),
              SizedBox(height: 12.v),
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgLinkedin,
                    height: 12.v,
                    width: 10.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Text(
                      "New Jersey, USA",
                      style: CustomTextStyles.bodySmallBluegray400,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 2.v,
              bottom: 28.v,
            ),
            child: CustomIconButton(
              height: 48.adaptSize,
              width: 48.adaptSize,
              padding: EdgeInsets.all(8.h),
              decoration: IconButtonStyleHelper.fillLightBlue,
              child: CustomImageView(
                imagePath: ImageConstant.imgIcon,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNine(BuildContext context) {
    return SizedBox(
      height: 157.v,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 17.h,
          );
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return NineItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildEight(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 3.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 19.v,
          );
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return EightItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return SizedBox(
      child: SizedBox(
        height: 85.v,
        width: double.maxFinite,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 62.v,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: appTheme.whiteA700,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(24.h),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: appTheme.black90000.withOpacity(0.08),
                      spreadRadius: 2.h,
                      blurRadius: 2.h,
                      offset: Offset(
                        0,
                        1.74,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgFrame1000004656,
              height: 65.v,
              width: 294.h,
              alignment: Alignment.topCenter,
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildEleven(
    BuildContext context, {
    required String recents,
    required String seeAll,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          recents,
          style: theme.textTheme.bodyLarge!.copyWith(
            color: appTheme.gray800,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 4.v),
          child: Text(
            seeAll,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.blue400,
            ),
          ),
        ),
      ],
    );
  }
}

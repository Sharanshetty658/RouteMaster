import 'package:flutter/material.dart';
import 'package:sharan_s_application9/core/app_export.dart';

// ignore: must_be_immutable
class NineItemWidget extends StatelessWidget {
  const NineItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 157.v,
      width: 156.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImagePlaceHolder,
            height: 157.v,
            width: 156.h,
            radius: BorderRadius.circular(
              10.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 16.h,
                vertical: 15.v,
              ),
              decoration: AppDecoration.gradientBlackToBlack.copyWith(
                borderRadius: BorderRadiusStyle.customBorderBL10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10.v),
                  Text(
                    "Groceries",
                    style: CustomTextStyles.bodyLargeWhiteA700,
                  ),
                  Text(
                    "720 Locations",
                    style: CustomTextStyles.bodySmallWhiteA700,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:sharan_s_application9/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:sharan_s_application9/core/app_export.dart';

// ignore: must_be_immutable
class EightItemWidget extends StatelessWidget {
  const EightItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 4.v,
            bottom: 3.v,
          ),
          child: CustomIconButton(
            height: 32.adaptSize,
            width: 32.adaptSize,
            padding: EdgeInsets.all(8.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgLinkedinBlue400,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Groceries",
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 4.v),
              Text(
                "Antaro Mart, BSD City Tanggerang",
                style: theme.textTheme.bodySmall,
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(top: 23.v),
          child: Text(
            "1.7 Km",
            style: theme.textTheme.bodySmall,
          ),
        ),
      ],
    );
  }
}

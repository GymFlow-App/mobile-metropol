import 'package:flutter/material.dart';
import 'package:metropol/core/constants/theme/app_colors.dart';
import 'package:metropol/core/extension/num_extension.dart';
import 'package:metropol/core/helper/edge_insets_helper.dart';
import 'package:metropol/core/shared/app_button.dart';
import 'package:metropol/core/shared/app_icon.dart';
import 'package:metropol/core/shared/app_sized_box.dart';
import 'package:metropol/core/shared/app_text.dart';

class StreamingListViewBuilder extends StatelessWidget {
  const StreamingListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return AppSizedBox(
      height: 180,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) => Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: AppColors().dark,
          ),
          padding: REdgeInsets.symmetric(vertical: 4),
          margin: REdgeInsets.symmetric(horizontal: 8),
          width: 140.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: REdgeInsets.only(left: 4), child: AppText.bodyMedium("12:00")),
              const AppSizedBox(height: 4),
              AppIcon(
                assetPath: "https://media.metropoltv.com.tr/posterler/yatay/63a0214396d7e.jpg",
                height: 60.h,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
              Padding(
                padding: REdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                child: AppText.bodySmall(
                  "Metropol Gündemi - Okan Konyalıoğlu",
                  maxLines: 3,
                ),
              ),
              const Spacer(),
              AppButton.standart(
                alignment: Alignment.centerLeft,
                padding: REdgeInsets.only(left: 4),
                margin: REdgeInsets.symmetric(horizontal: 4.0),
                buttonText: "Tekrar",
              )
            ],
          ),
        ),
        itemCount: 8,
      ),
    );
  }
}
